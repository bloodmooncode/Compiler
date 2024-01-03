%{
    #include "/home/zhangyuanpu/Documents/Code/C_IR/include/node.h"
    #include "error.h"
    #include <vector>
    #include <typeinfo>
    extern NODE base_node;
    extern int yyline;
    extern int yylex();
    void yyerror(const char*s){printf("ERROR:Line:%d\n%s\n",yyline,s);}
    void insertVarible(std::string& type,std::string& id);
    void insertFunction(std::string& type,std::string& id);
%}

%union{
std::string               *string;
NODE                    *node;
int                       token;
}

%token <string>        TIDENTIFIER TINTEGER
%token <string>        TSEMICOLOM ";"
%token <string>        TCOMMA   ","
%token <string>        TMAIN    "main"
%token <string>        TINT     "int"
%token <string>        TRETURN  "return" 
%token <string>        TCONST   "const"
%token <string>        TIF      "if"
%token <string>        TELSE    "else"
%token <string>        TLBPAREN "{" 
%token <string>        TRBPAREN "}" 
%token <string>        TMINUS   "-" 
%token <string>        TNOT     "!" 
%token <string>        TWAVE    "~" 
%token <string>        TPLUS    "+" 
%token <string>        TDIV     "/" 
%token <string>        TMOD     "%" 
%token <string>        TMULTI   "*" 
%token <string>        TLPAREN  "("
%token <string>        TRPAREN  ")"
%token <string>        TLMPAREN "["
%token <string>        TRMPAREN "]"
%token <string>        TL       "<"
%token <string>        TLE      "<="
%token <string>        TG       ">"
%token <string>        TGE      ">="
%token <string>        TNE      "!="
%token <string>        TE       "=="
%token <string>        TLOGAND  "&&"
%token <string>        TLOGOR   "||"
%token <string>        TASSIGN  "="


%type <node>        CompUnit    // 编译单元
%type <node>            Decl    // 声明   
%type <node>       ConstDecl    // 常量声明     
%type <node>           BType    // 基本类型     'int' 'char'
%type <node>        ConstExp    // 常量表达式   
%type <node>        ConstDef    // 常数定义    
%type <node>    ConstDefList    // 常数定义数组  
%type <node>    ConstInitVal    // 常量初值
%type <node>         VarDecl    // 变量声明
%type <node>          VarDef    // 变量定义
%type <node>      VarDefList    // 变量定义数组
%type <node>         InitVal    // 变量初值
%type <node>     InitValList    // 变量初值数组
%type <node>         FuncDef    // 函数定义
%type <node>        FuncType    // 函数类型
%type <node>           Block    // 语句块
%type <node>       BlockItem    // 语句块项
%type <node>   BlockItemList    // 语句块项数组
%type <node>            Stmt    // 语句
%type <node>          Number    // 数值
%type <node>             Exp    // 表达式
%type <node>            LVal    // 左值表达式
%type <node>      PrimaryExp    // 基本表达式
%type <node>        UnaryExp    // 一元表达式
%type <node>          MulExp    // 乘除模白表达式
%type <node>          AddExp    // 加减表达式
%type <node>          RelExp    // 关系表达式
%type <node>           EqExp    // 相等性表达式
%type <node>         LAndExp    // 逻辑与表达式
%type <node>          LOrExp    // 逻辑或表达式
%type <node>              If
%type <node>            Else

%start CompUnit
%%
CompUnit
    : FuncDef 
        {base_node.add_child($1);
        WARNNING("CompUnit->FuncDef ");}
    | FuncDef CompUnit
        {base_node.add_child($1);
        WARNNING("CompUnit->FuncDef ");}
    ;
Decl          
    : ConstDecl 
        {$$ = base_node.new_node(Decl);
        $$->add_child($1);
        WARNNING("Decl->ConstDecl ");}
    | VarDecl
        {$$ = base_node.new_node(Decl);
        $$->add_child($1);
        WARNNING("Decl->VarDecl ");}
    ;
ConstDecl     
    : "const" BType ConstDefList ";"
        {$$ = base_node.new_node(ConstDecl);
        $$->add_child($2);
        $$->add_child($3);
        WARNNING("ConstDecl->const BType ConstDefList ");}
    ;
ConstDefList     
    : ConstDef
        {$$ = base_node.new_node(ConstDefList);
        $$->add_child($1);
        WARNNING("ConstDefList->ConstDef ");}
    |   ConstDef "," ConstDefList
        {$3->add_child($1);
        $$ = $3;
        WARNNING("ConstDefList->ConstDef , ConstDefList ");}
    ;
BType         
    : "int"
        {$$ = base_node.new_node(BType);
        $$->b_type = std::string("i32");
        WARNNING("BType->int ");}
    ;
ConstDef      
    : TIDENTIFIER "=" ConstInitVal
        {$$ = base_node.new_node(ConstDef);
        $$->LVal = *$1;
        $$->add_child($3);
        WARNNING("ConstDef->TIDENTIFIER = ConstInitVal ");}
    ;
ConstInitVal  
    : ConstExp
        {$$ = base_node.new_node(ConstInitVal);
        $$->add_child($1);
        WARNNING("ConstInitVal->ConstExp ");}
    ;
ConstExp
    : Exp
        {$$ = base_node.new_node(Exp);
        $$->add_child($1);
        WARNNING("ConstExp->Exp ");}
    ;
VarDecl       
    : BType VarDefList ";"
       {$$ = base_node.new_node(VarDecl);
        $$->add_child($1);
        $$->add_child($2);
        WARNNING("VarDecl->BType VarDefList ; ");}
    ;
VarDefList
    : VarDef
        {$$ = base_node.new_node(VarDefList);
        $$->add_child($1);
        WARNNING("VarDefList->VarDef ");}
    | VarDef "," VarDefList
        {$3->add_child($1);
        $$ = $3;
        WARNNING("VarDefList->VarDef , VarDefList ");}
    ;
VarDef        
    : TIDENTIFIER 
        {$$ = base_node.new_node(VarDef);
        $$->LVal = *$1;
        WARNNING("VarDef->TIDENTIFIER ");}
    | TIDENTIFIER "=" InitVal
        {$$ = base_node.new_node(VarDef);
        $$->LVal = *$1;
        $$->add_child($3);
        WARNNING("VarDef->TIDENTIFIER = InitVal ");}
    ;
InitVal       
    : Exp
        {$$ = base_node.new_node(InitVal);
        $$->add_child($1);
        WARNNING("InitVal->exp ");}
    | "{" "}"
        {$$ = base_node.new_node(InitVal);
        $$->add_child($1);
        WARNNING("InitVal->{} ");}
    | "{" InitValList "}"
        {$3->add_child($1);
        $$ = $3;
        WARNNING("VarDefList->VarDef , VarDefList ");}
    ;
InitValList
    : InitVal
        { };
    | InitVal "," InitValList
        { }; 

FuncDef
    : FuncType TIDENTIFIER "(" ")" Block 
        {$$ = base_node.new_node(FuncDef);
        $$->add_child($1);
        $$->add_child($5);
        $$->func_name = *$2;
        $5->func_name = *$2;
        $5->func_type = $1->func_type;
        WARNNING("FuncDef->ftype id () block ");}
    ;
FuncType
    : "int" 
        {$$ = base_node.new_node(FuncType);
        $$->func_type = std::string("i32");
        WARNNING("FuncType->int ");}
    ;

Block
    : "{" BlockItemList "}"
        {$$ = base_node.new_node(Block);
        $$->add_child($2);
        WARNNING("Block->{BlockItemList} ");}
    ;
BlockItemList
    : BlockItem
        {$$ = base_node.new_node(BlockItemList);
        $$->add_child($1);
        WARNNING("BlockItemList->BlockItem ");}
    | BlockItem BlockItemList
        {$2->add_child($1);
        $$ = $2;
        WARNNING("BlockItemList->BlockItem BlockItemList");}
    ;
BlockItem     
    : Decl 
        {$$ = base_node.new_node(BlockItem);
        $$->add_child($1);
        WARNNING("BlockItem->Decl ");}
    | Stmt
        {$$ = base_node.new_node(BlockItem);
        $$->add_child($1);
        WARNNING("BlockItem->Stmt ");}
    ;
Stmt         
    : LVal "=" Exp ";"
        {$$ = base_node.new_node(Stmt);
        $$->add_child($1);
        $$->add_child($3);
        $$->LVal = $1->LVal;
        $3->LVal = $1->LVal;
        $$->stmt_type = "assign";
        WARNNING("Stmt->return exp ");} 
    | ";"
        {$$ = base_node.new_node(Stmt);
        WARNNING("丢弃 Stmt->; ");}
    | If
        {$$ = base_node.new_node(Stmt);
        $$->stmt_type = "if";
        $$->add_child($1);
        WARNNING("Stmt->If ");}
    | If Else
        {$$ = base_node.new_node(Stmt);
        $$->stmt_type = "if else";
        $$->add_child($1);
        $$->add_child($2);
        WARNNING("Stmt->If Else; ");}
    | Exp ";"
        {$$ = base_node.new_node(Stmt);
        WARNNING("丢弃 Stmt->Exp ; ");}
    | Block
        {$$ = base_node.new_node(Stmt);
        $$->add_child($1);
        WARNNING("Stmt->Block ");}
    | "return" ";"
        {$$ = base_node.new_node(Stmt);
        $$->stmt_type = "ret";
        WARNNING("Stmt->return; ");}
    | "return" Exp ";"
        {$$ = base_node.new_node(Stmt);
        $$->stmt_type = "ret";
        $$->add_child($2);
        WARNNING("Stmt->return exp ");} ;
    ;
If  
    : "if" "(" Exp ")" Stmt 
        {$$ = base_node.new_node(If);
        $$->add_child($3);
        $$->add_child($5);
        printf("IF->exp stmt\n");};
Else
    : "else" Stmt
        {$$ = base_node.new_node(Else);
        $$->add_child($2);
        printf("ELse->stmt\n");}
LVal         
    : TIDENTIFIER
        {$$ = base_node.new_node(LVal);
        $$->LVal = *$1;
        WARNNING("LVal->TIDENTIFIER ");};
    ;
Number
    : TINTEGER 
        {$$ = base_node.new_node(Number);
        $$->intv = atoi($1->c_str());
        WARNNING("Number->integer ");} 
    ;
PrimaryExp
    : "(" Exp ")" 
        {$$ = base_node.new_node(PrimaryExp);
        $$->add_child($2);
        WARNNING("PrimaryExp->(exp) ");}
    | LVal 
        {$$ = base_node.new_node(PrimaryExp);
        $$->add_child($1);
        WARNNING("PrimaryExp->LVal ");} 
    | Number 
        {$$ = base_node.new_node(PrimaryExp);
        $$->add_child($1);
        WARNNING("PrimaryExp->(num) ");} 
    ;
Exp
    : LOrExp 
        {$$ = base_node.new_node(Exp);
        $$->add_child($1);
        WARNNING("Exp->lorexp ");} 
    ;
UnaryExp
    : PrimaryExp  
        {$$ = base_node.new_node(UnaryExp);
        $$->add_child($1);
        WARNNING("UnaryExp->PrimaryExp ");} 
    | "+" UnaryExp 
        {$$ = base_node.new_node(UnaryExp);
        $$->add_child($2);
        $$->op = "+";
        WARNNING("UnaryExp-> + UnaryExp ");}
    | "-" UnaryExp 
        {$$ = base_node.new_node(UnaryExp);
        $$->add_child($2);
        $$->op = "-";
        WARNNING("UnaryExp-> - UnaryExp ");}
    | "!" UnaryExp
        {$$ = base_node.new_node(UnaryExp);
        $$->add_child($2);
        $$->op = "!";
        WARNNING("UnaryExp-> ! UnaryExp ");} 
    ;
MulExp
    : UnaryExp 
        {$$ = base_node.new_node(MulExp);
        $$->add_child($1);
        WARNNING("MulExp->UnaryExp ");}
    | MulExp "*" UnaryExp 
        {$$ = base_node.new_node(MulExp);
        $$->add_child($1);
        $$->op = "*";
        $$->add_child($3);
        WARNNING("MulExp->MulExp * UnaryExp ");}
    | MulExp "/" UnaryExp 
        {$$ = base_node.new_node(MulExp);
        $$->add_child($1);
        $$->op = "/";
        $$->add_child($3);
        WARNNING("MulExp->MulExp / UnaryExp ");}
    | MulExp "%" UnaryExp 
        {$$ = base_node.new_node(MulExp);
        $$->add_child($1);
        $$->op = "%";
        $$->add_child($3);
        WARNNING("MulExp->MulExp %% UnaryExp ");}
    ;
AddExp
    : MulExp 
        {$$ = base_node.new_node(AddExp);
        $$->add_child($1);
        WARNNING("AddExp->MulExp ");} 
    | AddExp "+" MulExp 
        {$$ = base_node.new_node(AddExp);
        $$->add_child($1);
        $$->op = "+";
        $$->add_child($3);
        WARNNING("AddExp->AddExp + MulExp");} 
    | AddExp "-" MulExp 
        {$$ = base_node.new_node(AddExp);
        $$->add_child($1);
        $$->op = "-";
        $$->add_child($3);
        WARNNING("AddExp->AddExp - MulExp ");} 
    ;
RelExp
    : AddExp  
        {$$ = base_node.new_node(RelExp);
        $$->add_child($1);
        WARNNING("RelExp->AddExp ");} 
    | RelExp "<" AddExp 
        {$$ = base_node.new_node(RelExp);
        $$->add_child($1);
        $$->op = "<";
        $$->add_child($3);
        WARNNING("RelExp->RelExp < AddExp ");} 
    | RelExp ">" AddExp 
        {$$ = base_node.new_node(RelExp);
        $$->add_child($1);
        $$->op = ">";
        $$->add_child($3);
        WARNNING("RelExp->RelExp > AddExp ");} 
    | RelExp "<=" AddExp 
        {$$ = base_node.new_node(RelExp);
        $$->add_child($1);
        $$->op = "<=";
        $$->add_child($3);
        WARNNING("RelExp->RelExp <= AddExp ");} 
    | RelExp ">=" AddExp 
        {$$ = base_node.new_node(RelExp);
        $$->add_child($1);
        $$->op = ">=";
        $$->add_child($3);
        WARNNING("RelExp->RelExp >= AddExp ");} 
    ;
EqExp
    : RelExp  
        {$$ = base_node.new_node(EqExp);
        $$->add_child($1);
        WARNNING("EqExp->RelExp ");} 
    | EqExp "==" RelExp 
        {$$ = base_node.new_node(EqExp);
        $$->add_child($1);
        $$->op = "==";
        $$->add_child($3);
        WARNNING("EqExp->EqExp == RelExp ");} 
    | EqExp "!=" RelExp 
        {$$ = base_node.new_node(EqExp);
        $$->add_child($1);
        $$->op = "!=";
        $$->add_child($3);
        WARNNING("EqExp->EqExp != RelExp ");} 
    ;
LAndExp
    : EqExp 
        {$$ = base_node.new_node(LAndExp);
        $$->add_child($1);
        WARNNING("LAndExp->EqExp ");} 
    | LAndExp "&&" EqExp 
        {$$ = base_node.new_node(LAndExp);
        $$->add_child($1);
        $$->op = "&&";
        $$->add_child($3);
        WARNNING("LAndExp->LAndExp && EqExp ");} 
    ;
LOrExp
    : LAndExp 
        {$$ = base_node.new_node(LOrExp);
        $$->add_child($1);
        WARNNING("LOrExp->LAndExp ");} 
    | LOrExp "||" LAndExp
        {$$ = base_node.new_node(LOrExp);
        $$->add_child($1);
        $$->op = "||";
        $$->add_child($3);
        WARNNING("LOrExp->LOrExp || LAndExp ");}  
    ;
%%
void insertVarible(std::string& type,std::string& id){
    VaribleTable.insert(std::make_pair<std::string, VaribleInfo>(std::string(id),VaribleInfo(type)));
}
void insertFunction(std::string& type,std::string& id){
    FunctionTable.insert(
        std::make_pair<std::string, FunctionInfo>
            (std::string(id),FunctionInfo(type,VaribleTable)));
    VaribleTable.clear();
}
