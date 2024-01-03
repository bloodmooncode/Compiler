#include  "../include/node.h"
#include  "../include/value.h"
#include  "../include/error.h"
#include  "../include/runtime.h"
#include <cstdio>
#include <type_traits>

void value_set::add_value(V_SET v_type,double v,std::string n){
  value* V = new value();
  V->value_type = v_type;
  V->v = v;
  V->name = n;
  value_set::value_list.push_back(V);
}

void value_set::add_value(std::string n){
  value* V = new value();
  V->name = n;
  // printf("add v %s \n",n.c_str());
  value_set::value_list.push_back(V);
}

bool value_set::exist(std::string name){
  for(value* v : value_set::value_list){
    // printf("cmp v %s %s\n",v->name.c_str(),name.c_str());
    if(v->name.compare(name)==0)return true;
  }
  return false;
}

void value_set::show_value(){
  for(value* v : value_set::value_list){
    printf("%s(%d) %lf\n",v->name.c_str(),v->value_type,v->v);
  }
}