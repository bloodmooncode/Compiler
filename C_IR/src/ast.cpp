#include "../include/error.h"
#include "../include/node.h"
#include "../include/value.h"
#include <cstdio>
#include <map>
#include <cstdlib>
NODE base_node = NODE();
NODE base_ir = NODE();
std::map<std::string,std::string> tmp_change_map;

value_set value_list = value_set();
int exp_pt = 0;
int tmp = 0;
std::map<std::string,int> register_map;
void show_map(){
  for(auto &i : register_map){
    printf("%s %d\n",i.first.c_str(),i.second);
  }
}

void test(){
  base_node.node_type = CompUnit;
  base_node.new_node(CompUnit);
}
void show_ast(const NODE* base_node,int dp){
  for(int i=0;i<dp-1;i++)std::cout<<"| ";
  std::cout<<"├";
  std::cout<<get_detail(base_node)<<std::endl;
  if(base_node->node_list.size()>0){
    for(const NODE* node : base_node->node_list){
      show_ast(node,dp+1);
    }
  }
}

void value_replace(const NODE* base_node,int dp){
  for(int i=0;i<dp-1;i++)std::cout<<"| ";
  std::cout<<"├";
  std::cout<<get_detail(base_node)<<std::endl;
  if(base_node->node_list.size()>0){
    for (auto it = base_node->node_list.rbegin(); it != base_node->node_list.rend(); it++){
      std::string v_dst = (*it)->LVal;
      std::string v_src = (*it)->LVal;
      if((*it)->node_type==VarDef||(*it)->node_type==ConstDef||(*it)->node_type==LVal){
        if((*it)->node_type==VarDef||(*it)->node_type==ConstDef){
          if(value_list.exist((*it)->LVal)){
            while(value_list.exist((*it)->LVal)){
              (*it)->LVal.append("_");
            }
            v_dst = (*it)->LVal;
            //std::cout<<"add"<<v_src<<v_dst<<std::endl;
            tmp_change_map.insert(std::pair<std::string,std::string>(v_src,v_dst));
          }
          value_list.add_value((*it)->LVal);
        }
        else{
          if(tmp_change_map.count(v_src)==1){
            // printf("Lval %s\n",v_src.c_str());
            // for(auto m : tmp_change_map){
            //   std::cout<<m.first<<m.second<<std::endl;
            // }
            (*it)->LVal = tmp_change_map.find(v_src)->second;
          }
          else{
            (*it)->LVal = v_src;
          }
        }
      }
      if((*it)->node_type == Block){
        // 保存变量作用
        std::map<std::string,std::string> save_change_map;
        for(auto m : tmp_change_map){
          save_change_map.insert(std::pair<std::string,std::string>(m.first,m.second));
        }
        value_replace((*it),dp+1);
        tmp_change_map.clear();
        for(auto m : save_change_map){
          tmp_change_map.insert(std::pair<std::string,std::string>(m.first,m.second));
        }
        // 恢复变量作用
      }
      else{
        value_replace((*it),dp+1);
      }
      //after
      if((*it)->node_type == Stmt){
        if((*it)->LVal.compare("")!=0 && tmp_change_map.count((*it)->LVal)==1){
          (*it)->LVal = tmp_change_map.find((*it)->LVal)->second;
        }
      }
    }
  }
}


void ast_to_ir(NODE* ir_node,const NODE* base_node,int dp,std::string BType_broadcast){
  if(base_node->node_list.size()>0){
    for(const NODE* node : base_node->node_list){
      bool new_branch = true;
      for(int i=1;i<dp+1;i++)std::cout<<"| ";
      std::cout<<"├"<<get_detail(node);
      //Exp
      if(node->node_type==Exp){
        ir_node->add_child_(Exp);
        ir_node->IRnode_list.back()->node_type = Exp;
        WARNNING("IR Exp\n");
        IR_exp(ir_node->IRnode_list.back(),node,dp);
        continue;
      }
      //ConstDef
      else if(node->node_type==ConstDef){
        ir_node->add_child_(ConstDef);
        ir_node->IRnode_list.back()->node_type = ConstDef;
        ir_node->IRnode_list.back()->b_type = BType_broadcast;
        ir_node->IRnode_list.back()->LVal = node->LVal;
        WARNNING("IR ConstDef\n");
        //continue;
      }
      //VarDef
      else if(node->node_type==VarDef){
        ir_node->add_child_(VarDef);
        ir_node->IRnode_list.back()->node_type = VarDef;
        ir_node->IRnode_list.back()->b_type = BType_broadcast;
        ir_node->IRnode_list.back()->LVal = node->LVal;
        WARNNING("IR VarDef\n");
        //continue;
      }
      //Block
      else if(node->node_type==Block){
        ir_node->add_child_(Block);
        ir_node->IRnode_list.back()->node_type = Block;
        ir_node->IRnode_list.back()->func_name = node->func_name;
        ir_node->IRnode_list.back()->func_type = node->func_type;
        WARNNING("IR Block\n");
        //continue;
      }
      //Stmt
      else if(node->node_type==Stmt){
        ir_node->add_child_(Stmt);
        ir_node->IRnode_list.back()->node_type = Stmt;
        ir_node->IRnode_list.back()->stmt_type = node->stmt_type;
        ir_node->IRnode_list.back()->LVal = node->LVal;
        WARNNING("IR Stmt\n");
        //continue;
      }
      //If
      else if(node->node_type==If){
        ir_node->add_child_(If);
        ir_node->IRnode_list.back()->node_type = If;
        WARNNING("IR IF\n");
        //continue;
      }
      //Else
      else if(node->node_type==Else){
        ir_node->add_child_(Else);
        ir_node->IRnode_list.back()->node_type = Else;
        WARNNING("IR Else\n");
        //continue;
      }
      else {
        printf("\n");
        new_branch = false;
      }

      if (node->node_type==BType){
        BType_broadcast = node->b_type;
      }
      //before
      if(new_branch){
        ast_to_ir(ir_node->IRnode_list.back(),node,dp+1,BType_broadcast);
      }
      else{
        ast_to_ir(ir_node,node,dp+1,BType_broadcast);
      }
      //after
    }
  }
}

void show_ir(NODE* ir_node,int dp){
  for(int i=1;i<dp+1;i++)std::cout<<"| ";
  std::cout<<"├"<<get_detail(ir_node);
  if(ir_node->node_type == Exp){
    printf(" ");
    for(op_v arg : ir_node->exp_stream){
    if(arg.op.compare("")!=0){ WARNNING(" %s",arg.op.c_str());}
    else if(arg.lval.compare("")!=0){ WARNNING(" %s",arg.lval.c_str());}
    else{ WARNNING(" %d",arg.v);}
    }
  }
  else if(ir_node->node_type == Block){
    WARNNING(" %s %s",ir_node->func_name.c_str(),ir_node->func_type.c_str());
  }
  else if(ir_node->node_type == Stmt){
    WARNNING(" %s %s",ir_node->stmt_type.c_str(),ir_node->LVal.c_str());
  }
    
  printf("\n");
  if(ir_node->IRnode_list.size()>0){
    for(NODE* node : ir_node->IRnode_list){
      show_ir(node,dp+1);
    }
  }
}

void cal_ir(NODE* ir_node,int dp){
  if(ir_node->IRnode_list.size()>0){
    for (std::vector<NODE*>::reverse_iterator it = ir_node->IRnode_list.rbegin(); it != ir_node->IRnode_list.rend(); it++){
      if((*it)->node_type==Exp){
        exp_ir_gen(*it);
      }
      cal_ir(*it,dp+1);
    }
  }
}

void gen_ir(NODE* ir_node,int dp){
  if(ir_node->IRnode_list.size()>0){
    for (std::vector<NODE*>::reverse_iterator it = ir_node->IRnode_list.rbegin(); it != ir_node->IRnode_list.rend(); it++){
      if((*it)->node_type==Exp){
        exp_ir_gen(*it);
        //gen_ir(*it,dp+1);
      }
      else if((*it)->node_type==ConstDef){
        constdef_ir_gen(*it);
        //gen_ir(*it,dp+1);
      }
      else if((*it)->node_type==VarDef){
        vardef_ir_gen(*it);
        //gen_ir(*it,dp+1);
      }
      else if((*it)->node_type==Stmt){
        gen_ir(*it,dp+1);
        Stmt_ir_gen(*it);
      }
      else if((*it)->node_type==Block&&(*it)->func_name.compare("")!=0){
        tmp = 0;
        register_map.clear();
        fun_ir_gen(*it);
        gen_ir(*it,dp+1);
        fun_ir_ret(*it);
      }
      else{
        gen_ir(*it,dp+1);
      }
    }
  }
}

void constdef_ir_gen(NODE* exp_node){
  WARNNING("  @%s = alloc %s\n",exp_node->LVal.c_str(),exp_node->b_type.c_str());
  if(exp_node->IRnode_list.size()>0){
    if(exp_node->IRnode_list.front()->IR_res.calable){
      WARNNING("  store %d, @%s\n",exp_node->IRnode_list.front()->IR_res.v,exp_node->LVal.c_str());
    }
    else {
      WARNNING("  store %d, @%s\n",exp_node->IRnode_list.front()->exp_stream[0].v,exp_node->LVal.c_str());
    }
  }
}

void Stmt_ir_gen(NODE* Stmt_node){
  if(Stmt_node->stmt_type.compare("assign")==0){
    if(Stmt_node->IRnode_list.size()>0){
          // WARNNING(">  ret %s %d %s\n",Stmt_node->IRnode_list.front()->IR_res.lval.c_str(),Stmt_node->IRnode_list.front()->IR_res.v,Stmt_node->IRnode_list.front()->IR_res.op.c_str());
      if(Stmt_node->IRnode_list.front()->exp_stream.size()==1){
        if(Stmt_node->IRnode_list.front()->IR_res.op.compare("")!=0){
          WARNNING("  store %s, @%s\n",Stmt_node->IRnode_list.front()->IR_res.op.c_str(),Stmt_node->LVal.c_str());
        }
        else if(Stmt_node->IRnode_list.front()->IR_res.lval.compare("")!=0){
          if(register_map.count(Stmt_node->IRnode_list.front()->IR_res.lval)==0){
            WARNNING("  %%%d = load @%s\n",tmp,Stmt_node->IRnode_list.front()->IR_res.lval.c_str());
            register_map.insert(std::pair<std::string,int>(Stmt_node->IRnode_list.front()->IR_res.lval,tmp++));
          }
          WARNNING("  store %%%d, @%s\n",register_map.find(Stmt_node->IRnode_list.front()->IR_res.lval)->second,Stmt_node->LVal.c_str());
        }
        else {
          WARNNING("  store %d, @%s\n",Stmt_node->IRnode_list.front()->IR_res.v,Stmt_node->LVal.c_str());
        }
      }
      else{
        if(Stmt_node->IRnode_list.front()->IR_res.op.compare("")!=0){
          std::string op = Stmt_node->IRnode_list.front()->IR_res.op.erase(0,1);
          int t = atoi(op.c_str());
          register_map.insert(std::pair<std::string,int>(Stmt_node->LVal,t));
          WARNNING("  store %%%d, @%s\n",t,Stmt_node->LVal.c_str());
          
        }
        else {
          WARNNING("  store %d, @%s\n",Stmt_node->IRnode_list.front()->IR_res.v,Stmt_node->LVal.c_str());
        }
      }
    }
  }
  else if(Stmt_node->stmt_type.compare("ret")==0){
    if(Stmt_node->IRnode_list.size()>0){
      if(Stmt_node->IRnode_list.front()->exp_stream.size()==1){
        if(Stmt_node->IRnode_list.front()->IR_res.lval.compare("")!=0){
          WARNNING("  ret %%%d\n",register_map.find(Stmt_node->IRnode_list.front()->IR_res.lval)->second);
        }
        else{
          WARNNING("  ret %d\n",Stmt_node->IRnode_list.front()->exp_stream[0].v);

        }
      }
      else if(Stmt_node->IRnode_list.front()->IR_res.op.compare("")!=0){
        WARNNING("  ret %s\n",Stmt_node->IRnode_list.front()->IR_res.op.c_str());
      }
      else {
        WARNNING("  ret %d\n",Stmt_node->IRnode_list.front()->IR_res.v);
      }
    }
    else{
      WARNNING("  ret\n");
    }
  }
  
}

void vardef_ir_gen(NODE* exp_node){
  WARNNING("  @%s = alloc %s\n",exp_node->LVal.c_str(),exp_node->b_type.c_str());
  if(exp_node->IRnode_list.size()>0){
    if(exp_node->IRnode_list.front()->IR_res.calable){
      WARNNING("  store %d, @%s\n",exp_node->IRnode_list.front()->IR_res.v,exp_node->LVal.c_str());
    }
    else if(exp_node->IRnode_list.size()==1){
      WARNNING("  store %d, @%s\n",exp_node->IRnode_list.front()->exp_stream[0].v,exp_node->LVal.c_str());
    }
    else{
      WARNNING("  store %s, @%s\n",exp_node->IRnode_list.front()->IR_res.op.c_str(),exp_node->LVal.c_str());

    }
  }
}

void IR_exp(NODE* exp_node,const NODE* base_node,int dp){
  if(base_node->check_op()){
    op_v o_v = op_v();
    if(base_node->op.compare("*")==0){
      o_v.op = "mul";
    }
    if(base_node->op.compare("/")==0){
      o_v.op = "div";
    }
    if(base_node->op.compare("+")==0){
      o_v.op = "add";
    }
    if(base_node->op.compare("-")==0){
      o_v.op = "sub";
    }
    if(base_node->op.compare("==")==0){
      o_v.op = "eq";
    }
    if(base_node->op.compare("!=")==0){
      o_v.op = "ne";
    }
    if(base_node->op.compare("<")==0){
      o_v.op = "lt";
    }
    if(base_node->op.compare(">")==0){
      o_v.op = "gt";
    }
    if(base_node->op.compare("<=")==0){
      o_v.op = "le";
    }
    if(base_node->op.compare(">=")==0){
      o_v.op = "ge";
    }
    if(base_node->op.compare("&&")==0){
      o_v.op = "and";
    }
    if(base_node->op.compare("||")==0){
      o_v.op = "or";
    }
    if(base_node->op.compare("!=")==0){
      o_v.op = "not";
    }
    exp_node->exp_stream.push_back(o_v);
  }
  if(base_node->node_type==Number){
    op_v o_v = op_v();
    o_v.v = base_node->intv;
    o_v.calable = true;
    exp_node->exp_stream.push_back(o_v);
  }
  if(base_node->node_type==LVal){
    op_v o_v = op_v();
    o_v.lval = base_node->LVal;
    exp_node->exp_stream.push_back(o_v);
  }
  if(base_node->node_list.size()>0){
    for(const NODE* node : base_node->node_list){
      IR_exp(exp_node,node,dp+1);
    }
  }
}

int int_cal(std::string op,int op1,int op2){
    if(op.compare("mul")==0){
      return op1*op2;
    }
    if(op.compare("div")==0){
      if(op2==0){WARNNING("CANNOT DIV BY ZERO %d/%d\n",op1,op2);}
      return op1/op2;
    }
    if(op.compare("add")==0){
      return op1+op2;
    }
    if(op.compare("sub")==0){
      return op1-op2;
    }
    if(op.compare("eq")==0){
      return op1==op2;
    }
    if(op.compare("ne")==0){
      return op1!=op2;
    }
    if(op.compare("lt")==0){
      return op1<op2;
    }
    if(op.compare("gt")==0){
      return op1>op2;
    }
    if(op.compare("le")==0){
      return op1<=op2;
    }
    if(op.compare("ge")==0){
      return op1>=op2;
    }
    if(op.compare("and")==0){
      return op1&&op2;
    }
    if(op.compare("or")==0){
      return op1||op2;
    }
    if(op.compare("not")==0){
      return op1!=op2;
    }
}

op_v cal(NODE* base_node,std::vector<std::string> &cal_stream){
  op_v arg[3];
  std::string op;
  arg[0].op="";
  arg[0].v=-1;
  arg[0].lval="";
  bool cal1=false,cal2=false;
  if(exp_pt>=base_node->exp_stream.size())return arg[0];
  if(base_node->exp_stream[exp_pt].op.compare("")==0){
    arg[0].v = base_node->exp_stream[exp_pt].v;
    arg[0].lval = base_node->exp_stream[exp_pt++].lval;
    return arg[0];
  }
  op = base_node->exp_stream[exp_pt++].op;
  arg[1] = cal(base_node,cal_stream);
  arg[2] = cal(base_node,cal_stream);
  arg[0].op = std::string("%").append(std::to_string(tmp++));

  for(int i=1;i<3;i++){
    if(arg[i].op.compare("")==0&&arg[i].lval.compare("")!=0&&register_map.count(arg[i].lval)==0){
      WARNNING("  %%%d = load @%s\n",tmp,arg[i].lval.c_str());
      register_map.insert(std::pair<std::string,int>(arg[i].lval,tmp++));
    }
  }

  if(arg[0].op.compare("")!=0){ 
    WARNNING("  %s",arg[0].op.c_str());
  }
  else if(arg[0].lval.compare("")!=0){ 
    WARNNING("  @%s",arg[0].lval.c_str());
  }
  else{ 
    WARNNING("  %d",arg[0].v);
  }

   WARNNING(" = %s",op.c_str());
  
  if(arg[1].op.compare("")!=0){ 
    WARNNING(" %s,",arg[1].op.c_str());
  }
  else if(arg[1].lval.compare("")!=0){ 
    WARNNING(" %%%d,",register_map.find(arg[1].lval)->second);
  }
  else{ 
    WARNNING(" %d,",arg[1].v);cal1=true;
  }

  if(arg[2].op.compare("")!=0){ 
    WARNNING(" %s\n",arg[2].op.c_str());
  }
  else if(arg[2].lval.compare("")!=0){ 
    WARNNING(" %%%d\n",register_map.find(arg[2].lval)->second);
  }
  else{ 
    WARNNING(" %d\n",arg[2].v);cal2=true;
  }
  arg[0].v = int_cal(op,arg[1].v,arg[2].v);
  arg[0].calable = (cal1 || arg[1].calable) && (cal2 || arg[2].calable);
  // if(arg[0].calable){
  //   ERROR("  [%d = %s %d, %d] %d %d %d %d\n",arg[0].v,op.c_str(),arg[1].v,arg[2].v,cal1,cal2,arg[1].calable,arg[2].calable);
  // }
  return arg[0];
}

void exp_ir_gen(NODE* base_node){
  std::vector<std::string> cal_stream;
  exp_pt = 0;
  base_node->IR_res = cal(base_node,cal_stream);
}

void fun_ir_gen(NODE* base_node){
  WARNNING("fun @%s():%s{\n",base_node->func_name.c_str(),base_node->func_type.c_str());
  WARNNING("%%entry:\n");
}

void fun_ir_ret(NODE* base_node){
  WARNNING("}\n");
}

