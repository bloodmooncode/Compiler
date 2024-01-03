
#ifndef SRC_COMMON_GLOBAL_H_
#define SRC_COMMON_GLOBAL_H_

#include <map>

#include "type.h"

enum SY_ASSOCIATIVITY {
	AS_L2R, AS_R2L
};

typedef struct OPERATOR_INFO {
	OP_TYPE operator_type;
	int precedence; /*优先级*/
	int parameter_number; /*参数个数*/
	SY_ASSOCIATIVITY associativity; /*左结合，右结合*/
} OPERATOR_INFO;

extern std::map<OP_TYPE, OPERATOR_INFO> OPERATOR_INFO_MAP;

long long next_global_id();

#endif /* SRC_COMMON_GLOBAL_H_ */
