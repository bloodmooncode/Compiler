#ifndef _NODE_H_
#define _NODE_H_
#include "error.h"
#include <algorithm>
#include <iostream>
#include <utility>
#include <vector>

enum TYPE_SET{
  CompUnit,
  FuncDef,
  FuncType,
  Block,
  Stmt,
  Number,
  Exp,
  PrimaryExp,
  UnaryExp,
  MulExp,
  AddExp,
  RelExp,
  EqExp,
  LAndExp,
  LOrExp,
  Decl,
  ConstDecl,
  BType,
  ConstExp,
  ConstDef,
  ConstDefList,
  ConstInitVal,
  VarDecl,
  VarDef,
  VarDefList,
  InitVal,
  BlockItem,
  BlockItemList,
  LVal,
  If,
  Else,
  ElseIf,
  ElseIfList,
};

class op_v{
  public:
  std::string op="";
  int v=0;
  std::string lval="";
  bool calable = false;
};

class NODE{
  public:
  TYPE_SET node_type=CompUnit;
  std::vector<const NODE*> node_list;// AST
  std::vector<NODE*> IRnode_list; // IR
  NODE* new_node(TYPE_SET node_type);
  void add_child(const NODE* const node);
  void add_child_(TYPE_SET node_type);
  /*CompUnit*/
  
  /*FuncDef*/
  std::string func_name="";

  /*FuncType*/
  std::string func_type="";

  /*Block*/

  /*Stmt*/
  std::string stmt_type="";
  /*Number*/
  int intv=0;
  int lineno = 0;
  /*Exp*/
  std::vector<op_v> exp_stream; //IR
  op_v IR_res; //IR
  /*PrimaryExp*/

  /*UnaryExp*/
  std::string op="";
  bool check_op()const;
  /*MulExp*/

  /*AddExp*/

  /*RelExp*/

  /*EqExp*/

  /*LAndExp*/

  /*LOrExp*/

  /*Decl*/

  /*ConstDecl*/

  /*BType*/
  std::string b_type;

  std::string name;

  /*ConstExp*/

  /*ConstDef*/

  /*ConstDefList*/

  /*ConstInitVal*/

  /*VarDecl*/

  /*VarDef*/
  /*std::string def_name;*/
  
  /*VarDefList*/

  /*InitVal*/

  /*BlockItem*/

  /*BlockItemList*/

  /*LVal*/
  mutable std::string LVal="";

};
void show_ast(const NODE* base_node,int dp);
void ast_to_ir(NODE* ir_node,const NODE* base_node,int dp,std::string BType_broadcast);
void constdef_ir_gen(NODE* exp_node);
void vardef_ir_gen(NODE* exp_node);
void IR_exp(NODE* exp_node,const NODE* base_node,int dp);
std::string get_detail(const NODE* const node);
op_v cal(NODE* base_node,std::vector<std::string> &cal_stream);
void exp_ir_gen(NODE* base_node);
void fun_ir_gen(NODE* base_node);
void fun_ir_ret(NODE* base_node);
void show_ir(NODE* base_node,int dp);
void gen_ir(NODE* ir_node,int dp);
void cal_ir(NODE* ir_node,int dp);
void value_replace(const NODE* base_node,int dp);
void Stmt_ir_gen(NODE* Stmt_node);
#endif
