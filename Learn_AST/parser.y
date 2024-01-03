%{
    #include "node.h"
    #include "error.h"
    #include <vector>
    #include <string>
	TreeNode *programBlock = new TreeNode(0, NProgram);
    extern int lineno;
    extern int yylex();
    // extern bool last_statement_is_return;
    void yyerror(const char*s){printf("ERROR:Line:%d\n%s\n",lineno,s);}
    void insertVarible(std::string& type,std::string& id);
    void insertFunction(std::string& type,std::string& id);
%}

%union{
TreeNode				 *node;
std::string              *string;
int                      token;
}

%token <string>        TIDENTIFIER TINTEGER
%token <token>         TSEMICOLOM
%token <token>         TMAIN
%token <token>         TINT
%token <token>         TRETURN TLPAREN TRPAREN TLBPAREN TRBPAREN TMINUS TNOT TWAVE TPLUS TDIV TMOD TMULTI
%token <token>         TL TLE TG TGE TNE TE TLOGAND TLOGOR 
%token <token>         TASSIGN

%type <node>           expression
%type <node>           unary
%type <node>           type
%type <node>           statement
%type <node>           statements
%type <node>           assignment
%type <node>           function
%type <node>           declaration
%type <node>           functions
%type <node>           declarations
%type <node>           program
%type <node>           logical_or
%type <node>           logical_and
%type <node>           equality
%type <node>           additive
%type <node>           multiplicative
%type <node>           primary
%type <node>           relational;
%start program
%%
program
    : declarations functions {
        programBlock = new TreeNode(lineno,NProgram);
        programBlock->addChild($1);
        programBlock->addChild($2);
        }
    | functions {
        programBlock = new TreeNode(lineno,NProgram);
        programBlock->addChild($1);
    }
    | declarations {
        programBlock = new TreeNode(lineno,NProgram);
        programBlock->addChild($1);
    }
    ;

functions
    : function {
       $$ = new TreeNode(lineno,NFunctionDeclarations);
       $$->addChild($1); 
    }
    | functions function {
        $1->addChild($2);
    }
    ;

declarations 
    : declaration {
       $$ = new TreeNode(lineno,NDeclarations);
       $$->addChild($1); 
    }
    | declarations declaration {
        $1->addChild($2);
    }
    ;

function
    : type TIDENTIFIER TLPAREN TRPAREN TLBPAREN statements TRBPAREN TSEMICOLOM{
        $$ = new TreeNode(lineno, NFunctionDeclaration);
        $$->addChild($1);
        $$->node_name = *$2;
        $$->addChild($6);
        }
    | type TIDENTIFIER TLPAREN TRPAREN TLBPAREN  TRBPAREN TSEMICOLOM{
        $$ = new TreeNode(lineno, NFunctionDeclaration);
        $$->addChild($1);
        $$->node_name = *$2;
        }
	| type TMAIN TLPAREN TRPAREN TLBPAREN statements TRBPAREN TSEMICOLOM{
        $$ = new TreeNode(lineno, NFunctionDeclaration);
        $$->addChild($1);
        $$->addChild($6);
        $$->node_name = "main";
        }
    | type TMAIN TLPAREN TRPAREN TLBPAREN  TRBPAREN TSEMICOLOM{
        $$ = new TreeNode(lineno, NFunctionDeclaration);
        $$->addChild($1);
        $$->node_name = "main";
        }
    ;
statements
    : statement {
        $$ = new TreeNode(lineno,NStatements);
        $$->addChild($1);
        }
    | statements statement {
        $1->addChild($2);
        }
    ;
statement
   : TRETURN expression TSEMICOLOM {
        $$ = new TreeNode(lineno,NStatement);
        $$->addChild($2);
        $$->node_name = "return();";
        }
   | TSEMICOLOM {
        $$ = new TreeNode(lineno,NStatement);
        $$->node_name = ";";
        }
   | expression TSEMICOLOM{
        $$ = new TreeNode(lineno,NStatement);
        $$->addChild($1);
        $$->node_name = "();";
        }
   | declaration {
        $$ = new TreeNode(lineno,NStatement);
        $$->addChild($1); 
        }
    ;
declaration
    : type TIDENTIFIER TSEMICOLOM {
        $$ = new TreeNode(lineno, NDeclaration);
        $$->node_name = *$2;
        $$->addChild($1);
        $$=nullptr;
        }
    | type TIDENTIFIER TASSIGN expression TSEMICOLOM{
        $$ = new TreeNode(lineno, NDeclaration);
        $$->node_name = *$2;
        $$->addChild($1);
        $$->addChild($4);
    }
    ;

type
    : TINT {
        $$ = new TreeNode(lineno,NType);
        $$->node_name = "int";
        }
    ;

expression
    : assignment{
        $$ = new TreeNode(lineno,NExpression);
        $$->addChild($1);
        }
    ;
assignment
    : logical_or {
        $$ = new TreeNode(lineno, NAssign);
        $$->addChild($1);
        }
    | TIDENTIFIER TASSIGN expression {
        $$=new TreeNode(lineno,NAssign);
        $$->addChild($3);
        $$->node_name = "=";
        }
    ;

logical_or 
    : logical_and { 
        $$ = new TreeNode(lineno,NLogicalOr);
        $$->addChild($1);
        }
    | logical_or TLOGOR logical_and {
        $$ = new TreeNode(lineno,NLogicalOr);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = "||";
        }
    ;

logical_and

    : equality {
        $$ = new TreeNode(lineno,NLogicalAnd);
        $$->addChild($1);
        }
    | logical_and TLOGAND equality{
        $$ = new TreeNode(lineno,NLogicalAnd);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = "&&";
        }
    ;
equality
    : relational {
        $$ = new TreeNode(lineno,NEquality);
        $$->addChild($1);
        }
    | equality TE relational{
        $$ = new TreeNode(lineno,NEquality);
        $$->node_name = "==";
        $$->addChild($3);
        }
    | equality TNE relational {
        $$ = new TreeNode(lineno,NEquality);
        $$->node_name = "!=";
        $$->addChild($3);
        }

relational
    :additive {
        $$ = new TreeNode(lineno,NRelational);
        $$->addChild($1);
        }
    | relational TL additive{
        $$ = new TreeNode(lineno,NRelational);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = "<";
        }
    | relational TLE additive{
        $$ = new TreeNode(lineno,NRelational);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = "<=";
        }
    | relational TG additive{
        $$ = new TreeNode(lineno,NRelational);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = ">";
        }
    | relational TGE additive{
        $$ = new TreeNode(lineno,NRelational);
        $$->addChild($1);
        $$->addChild($3);
        $$->node_name = ">=";
        }
    ;

additive
    : multiplicative {
        $$ = new TreeNode(lineno,NAdditive);
        $$->addChild($1);
        }
    | additive TPLUS multiplicative 
        {
            $$ = new TreeNode(lineno,NAdditive);
            $$->addChild($1);
            $$->addChild($3);
            $$->node_name = "+";
            }
    | additive TMINUS multiplicative
        {
            $$ = new TreeNode(lineno,NAdditive);
            $$->addChild($1);
            $$->addChild($3);
            $$->node_name = "-";
            }
    ;
multiplicative
    :unary {
        $$ = new TreeNode(lineno,NMultiplicative);
        $$->addChild($1);
        }
    | multiplicative TMULTI unary
        {
            $$ = new TreeNode(lineno,NMultiplicative);
            $$->addChild($1);
            $$->addChild($3);
            $$->node_name = "*";
                }
    | multiplicative TDIV unary
        {
            $$ = new TreeNode(lineno,NMultiplicative);
            $$->addChild($1);
            $$->addChild($3);
            $$->node_name = "/";
                }
    | multiplicative TMOD unary
        {
            $$ = new TreeNode(lineno,NMultiplicative);
            $$->addChild($1);
            $$->addChild($3);
            $$->node_name = "%";
        }
    ;
unary
    : primary{
        $$ = new TreeNode(lineno,NUnary);
        $$->addChild($1);
        }
    | TMINUS unary {
        $$ = new TreeNode(lineno,NUnary);
        $$->addChild($2);
        $$->node_name = "-";
        }
    | TNOT unary {
        $$ = new TreeNode(lineno,NUnary);
        $$->addChild($2);
        $$->node_name = "!";
        }
    | TWAVE unary {
        $$ = new TreeNode(lineno,NUnary);
        $$->addChild($2);
        $$->node_name = "~";
        }
    ;

primary
    : TINTEGER {
        $$ = new TreeNode(lineno, NPrimary);
        $$->node_name = *$1;
        delete $1;
        }
    | TLPAREN expression TRPAREN {
        $$ = new TreeNode(lineno,NPrimary);
        $$->addChild($2);
        }
    | TIDENTIFIER {
        $$ = new TreeNode(lineno,NPrimary);
        $$->node_name = *$1;
        }
    ;
%%