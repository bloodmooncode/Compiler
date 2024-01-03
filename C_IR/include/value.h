#ifndef _VALUE_H_
#define _VALUE_H_
#include "error.h"
#include "runtime.h"
#include "node.h"
#include <algorithm>
#include <iostream>
#include <utility>
#include <vector>
enum V_SET{
  CONST_INT,
  CONST_FLOAT,
  CONST_DOUBLE,
  CONST_ZERO,
  VAR_INT,
  VAR_FLOAT,
  VAR_DOUBLE,
  VAR_ZERO,
  TMP
};
class value{
  public:
  V_SET value_type=TMP;
  double v=0;
  std::string name="";
};
class value_set{
  public:
  std::vector<value*> value_list;//可以改成树形更快
  void add_value(V_SET v_type,double v,std::string name);
  void add_value(std::string name);
  bool exist(std::string name);
  void show_value();
};
#endif
