#ifndef _NODE_H_
#define _NODE_H_
#include <string>
#include <iostream>
#include <vector>
using namespace std;

enum NodeTypes {
	NStatement, 
	NStatements,
	NAssign,
	NExpression,
	NRelational,
	NIdentifier,
	NFunctionDeclaration,
	NFunctionDeclarations,
	NType,
	NAdditive,
	NMultiplicative,
	NPrimary,
	NUnary,
	NString,
	NProgram,
	NLogicalOr,
	NLogicalAnd,
	NEquality,
	NDeclaration,
	NDeclarations,
	NInteger
};

struct TreeNode {
public:
	int nodeID;
	int lineno;
	std::string node_name;

	NodeTypes nodetypes;
	TreeNode* child = nullptr;
	TreeNode* sibling = nullptr;

	TreeNode(int lineno, NodeTypes type);
	TreeNode(TreeNode* node);	// 仅用于叶节点拷贝，函数不复制子节点，也不复制子节点指针
	void addChild(TreeNode*);
  	void addSibling(TreeNode*);

	void printNodeInfo();
	void printChildrenId();

	void printAST();	// 先输出自己 + 孩子们的id；再依次让每个孩子输出AST。
	void genNodeId();
	
public:
	static string nodeTypeJudge (NodeTypes nodetypes);
};

#endif