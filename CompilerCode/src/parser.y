%{
    #include "utils.h"
    #include "node.h"
    #include "error.h"
    #include <vector>
    #include <typeinfo>
    extern NODE base_node;
    extern int yyline;
    extern int yylex();
    // extern bool last_statement_is_return;
    void yyerror(char*s)
    {
        extern char *yytext;	// defined and maintained in lex
        int len=strlen(yytext);
        int i;
        char buf[512]={0};
        for (i=0;i<len;++i)
        {
            //TODO: may have bugs
            sprintf(buf,"%s%d ",buf,yytext[i]);
        }
        fprintf(stderr, "ERROR: text %s\n",yytext);
        fprintf(stderr, "ERROR: %s at symbol '%s' on line %d\n", s, buf, yyline);
        exit(1);
    }
    void insertVarible(std::string& type,std::string& id);
    void insertFunction(std::string& type,std::string& id);
%}

%union{
std::string             *string;
NODE                    *node;
int                     token;
}

%token <string>        TIDENTIFIER TINTEGER
%token <string>        TSEMICOLOM   ";"
%token <string>        TCOMMA       ","
%token <string>        TINT         "int"
%token <string>        TRETURN      "return" 
%token <string>        TCONST       "const"
%token <string>        TFLOAT       "float"
%token <string>        TVOID        "void"
%token <string>        TWHILE       "while"
%token <string>        TBREAK       "break"
%token <string>        TCONTINUE    "continue"
%token <string>        TIF          "if"
%token <string>        TELSE        "else"
%token <string>        TLBPAREN     "{" 
%token <string>        TRBPAREN     "}" 
%token <string>        TMINUS       "-" 
%token <string>        TNOT         "!" 
%token <string>        TPLUS        "+" 
%token <string>        TDIV         "/" 
%token <string>        TMOD         "%" 
%token <string>        TMULTI       "*" 
%token <string>        TLPAREN      "("
%token <string>        TRPAREN      ")"
%token <string>        TLMPAREN     "["
%token <string>        TRMPAREN     "]"
%token <string>        TL           "<"
%token <string>        TLE          "<="
%token <string>        TG           ">"
%token <string>        TGE          ">="
%token <string>        TNE          "!="
%token <string>        TE           "=="
%token <string>        TLOGAND      "&&"
%token <string>        TLOGOR       "||"
%token <string>        TASSIGN      "="

%type <node>        CompUnit    // 编译单元
%type <node>            Decl    // 声明   
%type <node>       ConstDecl    // 常量声明     
%type <node>           BType    // 基本类型     'int' 'char'
%type <node>        ConstExp    // 常量表达式   
%type <node>        ConstDef    // 常数定义    
%type <node>    ConstDefList    // 常数定义数组  
%type <node> ConstExpArrayList
%type <node>    ConstInitVal    // 常量初值
%type <node>ConstInitValList    // 常量初值
%type <node>         VarDecl    // 变量声明
%type <node>          VarDef    // 变量定义
%type <node>      VarDefList    // 变量定义数组
%type <node>         InitVal    // 变量初值
%type <node>     InitValList    // 变量初值数组
%type <node>         FuncDef    // 函数定义
%type <node>        FuncType    // 函数类型
%type <node>     FuncFParams    // 函数形参表
%type <node>      FuncFParam    // 函数形参
%type <node>   FuncFParamOne    // 形参格式
%type <node> FuncFParamArray    // 形参格式
%type <node>           Block    // 语句块
%type <node>       BlockItem    // 语句块项
%type <node>   BlockItemList    // 语句块项数组
%type <node>            Stmt    // 语句
%type <node>          Number    // 数值
%type <node>             Exp    // 表达式
%type <node>            Cond    // 条件表达式
%type <node>            LVal    // 左值表达式
%type <node>      PrimaryExp    // 基本表达式
%type <node>        UnaryExp    // 一元表达式
%type <node>          MulExp    // 乘除模白表达式
%type <node>          AddExp    // 加减表达式
%type <node>          RelExp    // 关系表达式
%type <node>           EqExp    // 相等性表达式
%type <node>         LAndExp    // 逻辑与表达式
%type <node>          LOrExp    // 逻辑或表达式
%type <node>        ArrayDef
%type <node>              If
%type <node>            Else

%start CompUnit
%expect 1
%%

CompUnit
    : FuncDef
        {
            parser_logger.print("CompUnit\n");
            base_node.add_child($1);
            base_node.lineno = yyline+1;
            printf("func def is %s\n",$1->name);
        }
    | CompUnit FuncDef
        {
            parser_logger.print("CompUnit\n");
            base_node.add_child($2);
            printf("func def is %s\n",$2->id.c_str());

        }
    | Decl
        {
            parser_logger.print("CompUnit\n");
            base_node.add_child($1);
            $$->lineno = yyline+1; 
        }
    | CompUnit Decl
        {
            parser_logger.print("CompUnit\n");
            base_node.add_child($2);
		    
        }
    ;

Decl          
    : ConstDecl 
        {
            parser_logger.print("Decl\n");
            $$ = base_node.new_node(Decl);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | VarDecl
        {   
            parser_logger.print("Decl\n");
            $$ = base_node.new_node(Decl);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    ;

ConstDecl     
    : "const" BType ConstDefList ";"
        {
            parser_logger.print("ConstDecl\n");
            $$ = base_node.new_node(ConstDecl);
            $$->add_child($2);
            $$->add_child($3);
            $$->lineno = yyline+1;
        }
    ;

ConstDefList     
    : ConstDef
        {   
            parser_logger.print("ConstDefList\n");
            $$ = base_node.new_node(ConstDefList);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    |   ConstDefList "," ConstDef
        {   
            parser_logger.print("ConstDefList\n");
            $3->add_child($1);
            $$ = $3;
        }
    ;

BType         
    : "int"
        {
            $$ = base_node.new_node(BType);
            $$->b_type = std::string("i32");
            $$->lineno = yyline+1;
            parser_logger.print("BType\n");
        }
    | "float"
        {
		    $$ = base_node.new_node(BType);
            $$->b_type = std::string("f32");
            $$->lineno = yyline+1;
            parser_logger.print("BType\n");
        }
    | "void"
        {
            parser_logger.print("BType\n");
		    $$ = base_node.new_node(BType);
            $$->b_type = std::string("i32");
            $$->lineno = yyline+1;
        }
    ;

ConstDef      
    : TIDENTIFIER ConstExpArrayList "=" ConstInitVal
        {
		    parser_logger.print("ConstDef\n");
            $$ = base_node.new_node(ConstDef);
            $$->lineno = yyline+1;
            $$->name = std::string($1);
            $$->add_child($2);
            $$->add_child($4);
        }

    | TIDENTIFIER "=" ConstInitVal 
        {   
            parser_logger.print("ConstDef\n");
            $$ = base_node.new_node(ConstDef);
            $$->lineno = yyline+1;
            $$->LVal = *$1;
            $$->add_child($3);
        }
    ;

ConstExpArrayList
    : "[" ConstExp "]"
        {
		    parser_logger.print("ConstExpArrayList\n");
            $$ = base_node.new_node(ConstExpArrayList);
            $$->lineno = yyline+1;
            $$->add_child($2);
        }
    | ConstExpArrayList "[" ConstExp "]"
        {
		    parser_logger.print("ConstExpArrayList\n");
            $1->add_child($3);
            $$ = $1;
        }
    ;

ConstInitVal  
    : ConstExp
        {
            parser_logger.print("ConstInitVal\n");
            $$ = base_node.new_node(ConstInitVal);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | "{" "}"
        {
            parser_logger.print("ConstInitVal\n");
            $$ = base_node.new_node(ConstInitVal);
            $$->lineno = yyline+1;
        }
    | "{" ConstInitValList "}"
        {
            parser_logger.print("ConstInitVal\n");
            $$ = base_node.new_node(ConstInitVal);
            $$->add_child($2);
            $$->lineno = yyline+1;
        }
    ;

ConstInitValList
    : ConstInitVal
        {
            parser_logger.print("ConstInitVallist\n");
            $$ = base_node.new_node(ConstInitVaList);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | ConstInitVal "," ConstInitValList
        {
            parser_logger.print("ConstInitVallist\n");
            $$ = base_node.new_node(ConstInitVaList);
            $$->add_child($1);
            $$ = $3;
        }
    ;

ConstExp
    : AddExp
        {   
            parser_logger.print("ConstExp\n");
            $$ = base_node.new_node(AddExp);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    ;

VarDecl       
    : BType VarDefList ";"
        {
            parser_logger.print("VarDecl\n");
            $$ = base_node.new_node(VarDecl);
            $$->add_child($1);
            $$->add_child($2);
            $$->lineno = yyline+1;
        }
    ;

VarDefList
    : VarDef
        {
            parser_logger.print("VarDefList\n");
            $$ = base_node.new_node(VarDefList);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | VarDef "," VarDefList
        {   
            parser_logger.print("VarDefList\n");
            $3->add_child($1);
            $$ = $3;
            $$->lineno = yyline+1;
        }
    ;

VarDef        
    : TIDENTIFIER 
        {
            parser_logger.print("VarDef\n");
            $$ = base_node.new_node(VarDef);
            $$->lineno = yyline+1;
            $$->name = std::string($1);
        }
    | TIDENTIFIER "=" InitVal
        {
            parser_logger.print("VarDef\n");
            $$ = base_node.new_node(VarDef);
            $$->add_child($3);
            $$->lineno = yyline+1;
            $$->name = std::string($1);
        }
    | TIDENTIFIER ArrayDef
        {
		    parser_logger.print("VarDef\n");
            $$ = base_node.new_node(VarDef);
            $$->lineno = yyline+1;
            $$->name = std::string($1);
            $$->add_child($2);
        }
    | TIDENTIFIER ArrayDef "=" InitVal
        {
		    parser_logger.print("VarDef\n");
            $$ = base_node.new_node(VarDef);
            $$->lineno = yyline+1;
            $$->name = std::string($1);
            $$->add_child($2);
            $$->add_child($4);
        }
    ;

ArrayDef
    : "[" ConstExp "]"
        {
		    parser_logger.print("ArrayDef\n");
            $$ = base_node.new_node(ArrayDef);
            $$->lineno = yyline+1;
            $$->add_child($2);
        }
    | ArrayDef "[" ConstExp "]"
        {
		    parser_logger.print("ArrayDef\n");
            $$->add_child($3);
            $$ = $1;
        }
    ;

InitVal       
    : Exp
        {
            parser_logger.print("InitVal\n");
            $$ = base_node.new_node(InitVal);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | "{" "}"
        {
            parser_logger.print("InitVal\n");
            $$ = base_node.new_node(InitVal);
            $$->lineno = yyline+1;
        }
    | "{" InitValList "}"
        {
            parser_logger.print("InitVal\n");
            $$ = base_node.new_node(InitVal);
            $$->add_child($2);
            $$->lineno = yyline+1;
        }
    ;

InitValList
    : InitVal
        {
            parser_logger.print("InitValList\n");
            $$ = base_node.new_node(InitValList);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | InitVal "," InitValList
        {   
            parser_logger.print("InitValList\n");
            $$ = base_node.new_node(InitValList);
            $$->add_child($1);
            $$ = $3;
            $$->lineno = yyline+1;
        }
    ; 

FuncDef
    : BType TIDENTIFIER "(" ")" Block
        {
		    parser_logger.print("FuncDef\n");
            $$ = base_node.new_node(FuncDef);
            $$->lineno = yyline+1;
            $$->add_child($1);
            $$->add_child($5);
            $$->b_type = std::to_string($1);
            $$->name = $2;
        }
    | BType TIDENTIFIER "(" FuncFParams ")" Block 
        {
            parser_logger.print("FuncDef\n");
            $$ = base_node.new_node(FuncDef);
            $$->lineno = yyline+1;
            $$->add_child($1);
            $$->add_child($4);
            $$->add_child($6);
            $$->name = $2;
            $6->b_type = $1->b_type;
        }
    ;

FuncFParams 
    : FuncFParam
        {
            parser_logger.print("FuncFParams\n");
            $$ = base_node.new_node(FuncFParams);
            $$->lineno = yyline+1;
            $$->add_child($1);
        }
    | FuncFParam "," FuncFParams
        {
            parser_logger.print("FuncFParams\n");
            $$ = base_node.new_node(FuncFParams);
            $$->add_child($1);
            $$ = $3;
        }
    ;

FuncFParam
    : FuncFParamOne
        {   
            parser_logger.print("FuncFParam\n");
            $$ = base_node.new_node(FuncFParam);
            $$->lineno = yyline+1;
            $$->add_child($1);
        }
    | FuncFParamArray
        {
            parser_logger.print("FuncFParam\n");
            $$ = base_node.new_node(FuncFParam);
            $$->lineno = yyline+1;
            $$->add_child($1);
            WARNNING("FuncFParam->FuncFParamArray ");
        }
    ;

FuncFParamOne
    : BType TIDENTIFIER
        {
            parser_logger.print("FuncFParamOne\n");
            $$ = base_node.new_node(FuncFParamOne);
            $$->add_child($1);
            $$->b_type = std::string($1);
            $$->name = $2;
        }
    ;

FuncFParamArray
    : BType TIDENTIFIER "[" "]"
        {
            parser_logger.print("FuncFParamArray\n");
            $$ = base_node.new_node(FuncFParamArray);
            $$->add_child($1);
            $$->_line_no = yyline+1;
            $$->name = $2;
        }
    | FuncFParamArray "[" Exp "]"
        {
            parser_logger.print("FuncFParamArray\n");
            $$ = base_node.new_node(FuncFParamArray);
            $$->add_child($3);
            $$ = $1;
        }
    ;

Block
    : "{" "}"
        {
		    parser_logger.print("Block\n");
            $$ = base_node.new_node(Block);
            $$->lineno = yyline+1;
        }
    | "{" BlockItemList "}"
        {
            parser_logger.print("Block\n");
            $$ = base_node.new_node(Block);
            $$->add_child($2);
            $$->lineno = yyline+1;
        }
    ;

BlockItemList
    : BlockItem
        {   
            parser_logger.print("BlockItemList\n");
            $$ = base_node.new_node(BlockItemList);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | BlockItem BlockItemList
        {
            parser_logger.print("BlockItemList\n");
            $2->add_child($1);
            $$ = $2;
        }
    ;

BlockItem     
    : Decl 
        {
            parser_logger.print("BlockItem\n");
            $$ = base_node.new_node(BlockItem);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    | Stmt
        {
            parser_logger.print("BlockItem\n");
            $$ = base_node.new_node(BlockItem);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    ;

Stmt         
    : LVal "=" Exp ";"
        {
            parser_logger.print("Stmt\n");
            $$ = base_node.new_node(Stmt);
            $$->lineno = yyline+1;
            auto a_stmt = Stmt.new_node(Stmt)
            a_stmt->l_val=add_child($1);
            a_stmt->add_child($3);

        } 
    | ";"
        {
            parser_logger.print("empty Stmt\n");
            $$ = base_node.new_node(Stmt);
            $$->lineno = yyline+1;
        }
    | Exp ";"
        {   
            parser_logger.print("Stmt\n");
            $$ = base_node.new_node(Stmt);
            $$->lineno = yyline+1;
            $$->add_child($1);
        }
    | Block
        {
            parser_logger.print("Stmt\n");
            $$ = base_node.new_node(Stmt);
            $$->add_child($1);
            $$->lineno = yyline+1;
        }
    /* if statement */
    | "if" "(" Cond ")" Stmt
        {
		    parser_logger.print("Stmt\n");
            $$ = base_node.new_node(Stmt);
            $$->lineno = yyline+1;
            auto if_stmt = new tree_if_stmt();
            if_stmt->cond = std::shared_ptr<tree_cond>($3);
            if_stmt->stmt = std::shared_ptr<tree_stmt>($5);
            $$->if_stmt = std::shared_ptr<tree_if_stmt>(if_stmt) ;
        }
    | "if" "(" Cond ")" Stmt "else" Stmt
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto if_else_stmt = new tree_if_else_stmt();
            if_else_stmt->cond = std::shared_ptr<tree_cond>($3);
            if_else_stmt->then_stmt = std::shared_ptr<tree_stmt>($5);
            if_else_stmt->else_stmt = std::shared_ptr<tree_stmt>($7);
            $$->if_else_stmt = std::shared_ptr<tree_if_else_stmt>(if_else_stmt) ;

        }
    /* while statement */
    | "while" "(" Cond ")" Stmt
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto while_stmt = new tree_while_stmt();
            while_stmt->cond = std::shared_ptr<tree_cond>($3);
            while_stmt->stmt = std::shared_ptr<tree_stmt>($5);
            $$->while_stmt = std::shared_ptr<tree_while_stmt>(while_stmt) ;
        }
    | "continue" ";"
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto continue_stmt = new tree_continue_stmt();
            $$->continue_stmt = std::shared_ptr<tree_continue_stmt>(continue_stmt) ;
        }
    | "break" ";"
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto break_stmt = new tree_break_stmt();
            $$->break_stmt = std::shared_ptr<tree_break_stmt>(break_stmt) ;
        }
    /* return statement */
    | "return" ";"
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto a_stmt = new tree_return_null_stmt();
            $$->return_null_stmt=std::shared_ptr<tree_return_null_stmt>(a_stmt) ;
        }
    | "return" Exp ";"
        {
		    parser_logger.print
                ("Stmt\n");
            $$ = new tree_stmt();
            $$->_line_no = yyline+1;
            auto a_stmt = new tree_return_stmt();
            a_stmt->exp=std::shared_ptr<tree_exp>($2);
            $$->return_stmt=std::shared_ptr<tree_return_stmt>(a_stmt) ;
        }
    ;

If  
    : "if" "(" Exp ")" Stmt 
        {
            $$ = base_node.new_node(If);
            $$->add_child($3);
            $$->add_child($5);
            printf("IF->exp stmt\n");
        }
    ;

Else
    : "else" Stmt
        {
            $$ = base_node.new_node(Else);
            $$->add_child($2);
            printf("ELse->stmt\n");
        }
    ;

LVal         
    : TIDENTIFIER
        {
            $$ = base_node.new_node(LVal);
            $$->LVal = *$1;
            WARNNING("LVal->TIDENTIFIER ");
        }
    ;

Cond
    : LOrExp
        {
            $$ = base_node.new_node(LVal);
            $$->add_child($1)
            WARNNING("Cond->LOrExp ");
        }
    ;

Number
    : TINTEGER 
        {
            $$ = base_node.new_node(Number);
            $$->intv = atoi($1->c_str());
            WARNNING("Number->integer ");
        } 
    | TFLOAT
        {
            $$ = base_node.new_node(Number);
            $$->intv = atoi($1->c_str());
            WARNNING("Number->float ");
        }
    ;

PrimaryExp
    : "(" Exp ")" 
        {
            $$ = base_node.new_node(PrimaryExp);
            $$->add_child($2);
            WARNNING("PrimaryExp->(exp) ");
        }
    | LVal 
        {
            $$ = base_node.new_node(PrimaryExp);
            $$->add_child($1);
            WARNNING("PrimaryExp->LVal ");
        } 
    | Number 
        {   
            $$ = base_node.new_node(PrimaryExp);
            $$->add_child($1);
            WARNNING("PrimaryExp->(num) ");
        } 
    ;

Exp
    : LOrExp 
        {
            $$ = base_node.new_node(Exp);
            $$->add_child($1);
            WARNNING("Exp->lorexp ");
        } 
    ;

UnaryExp
    : PrimaryExp
        {
            $$ = base_node.new_node(UnaryExp);
            $$->add_child($1);
            WARNNING("UnaryExp->PrimaryExp ");
        } 
    | "+" UnaryExp 
        {
            $$ = base_node.new_node(UnaryExp);
            $$->add_child($2);
            $$->op = "+";
            WARNNING("UnaryExp-> + UnaryExp ");
        }
    | "-" UnaryExp 
        {
            $$ = base_node.new_node(UnaryExp);
            $$->add_child($2);
            $$->op = "-";
            WARNNING("UnaryExp-> - UnaryExp ");
        }
    | "!" UnaryExp
        {
            $$ = base_node.new_node(UnaryExp);
            $$->add_child($2);
            $$->op = "!";
            WARNNING("UnaryExp-> ! UnaryExp ");
        } 
    ;

MulExp
    : UnaryExp 
        {
            $$ = base_node.new_node(MulExp);
            $$->add_child($1);
            WARNNING("MulExp->UnaryExp ");
        }
    | MulExp "*" UnaryExp 
        {
            $$ = base_node.new_node(MulExp);
            $$->add_child($1);
            $$->op = "*";
            $$->add_child($3);
            WARNNING("MulExp->MulExp * UnaryExp ");
        }
    | MulExp "/" UnaryExp 
        {
            $$ = base_node.new_node(MulExp);
            $$->add_child($1);
            $$->op = "/";
            $$->add_child($3);
            WARNNING("MulExp->MulExp / UnaryExp ");
        }
    | MulExp "%" UnaryExp 
        {
            $$ = base_node.new_node(MulExp);
            $$->add_child($1);
            $$->op = "%";
            $$->add_child($3);
            WARNNING("MulExp->MulExp %% UnaryExp ");
        }
    ;

AddExp
    : MulExp 
        {
            $$ = base_node.new_node(AddExp);
            $$->add_child($1);
            WARNNING("AddExp->MulExp ");
        } 
    | AddExp "+" MulExp 
        {
            $$ = base_node.new_node(AddExp);
            $$->add_child($1);
            $$->op = "+";
            $$->add_child($3);
            WARNNING("AddExp->AddExp + MulExp");
        } 
    | AddExp "-" MulExp 
        {
            $$ = base_node.new_node(AddExp);
            $$->add_child($1);
            $$->op = "-";
            $$->add_child($3);
            WARNNING("AddExp->AddExp - MulExp ");
        } 
    ;

RelExp
    : AddExp  
        {
            $$ = base_node.new_node(RelExp);
            $$->add_child($1);
            WARNNING("RelExp->AddExp ");
        } 
    | RelExp "<" AddExp 
        {
            $$ = base_node.new_node(RelExp);
            $$->add_child($1);
            $$->op = "<";
            $$->add_child($3);
            WARNNING("RelExp->RelExp < AddExp ");
        } 
    | RelExp ">" AddExp 
        {
            $$ = base_node.new_node(RelExp);
            $$->add_child($1);
            $$->op = ">";
            $$->add_child($3);
            WARNNING("RelExp->RelExp > AddExp ");
        } 
    | RelExp "<=" AddExp 
        {
            $$ = base_node.new_node(RelExp);
            $$->add_child($1);
            $$->op = "<=";
            $$->add_child($3);
            WARNNING("RelExp->RelExp <= AddExp ");
        } 
    | RelExp ">=" AddExp 
        {
            $$ = base_node.new_node(RelExp);
            $$->add_child($1);
            $$->op = ">=";
            $$->add_child($3);
            WARNNING("RelExp->RelExp >= AddExp ");
        } 
    ;

EqExp
    : RelExp  
        {
            $$ = base_node.new_node(EqExp);
            $$->add_child($1);
            WARNNING("EqExp->RelExp ");
        } 
    | EqExp "==" RelExp 
        {
            $$ = base_node.new_node(EqExp);
            $$->add_child($1);
            $$->op = "==";
            $$->add_child($3);
            WARNNING("EqExp->EqExp == RelExp ");
        } 
    | EqExp "!=" RelExp 
        {
            $$ = base_node.new_node(EqExp);
            $$->add_child($1);
            $$->op = "!=";
            $$->add_child($3);
            WARNNING("EqExp->EqExp != RelExp ");
        } 
    ;

LAndExp
    : EqExp 
        {
            $$ = base_node.new_node(LAndExp);
            $$->add_child($1);
            WARNNING("LAndExp->EqExp ");
        } 
    | LAndExp "&&" EqExp 
        {
            $$ = base_node.new_node(LAndExp);
            $$->add_child($1);
            $$->op = "&&";
            $$->add_child($3);
            WARNNING("LAndExp->LAndExp && EqExp ");
        } 
    ;

LOrExp
    : LAndExp 
        {
            parser_logger.print("LOrExp\n");
            $$ = base_node.new_node(LOrExp);
            $$->add_child($1);
            WARNNING("LOrExp->LAndExp ");
        } 
    | LOrExp "||" LAndExp
        {
            $$ = base_node.new_node(LOrExp);
            $$->add_child($1);
            $$->op = "||";
            $$->add_child($3);
            WARNNING("LOrExp->LOrExp || LAndExp ");
        }  
    ;
%%