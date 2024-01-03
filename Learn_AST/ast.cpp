#include "error.h"
#include "node.h"
#include <cstdio>
#include <cstdlib>
extern TreeNode *programBlock;
extern FILE *yyin;
extern int yyparse();
int lineno;

TreeNode::TreeNode(int lineno, NodeTypes type) {
    this->lineno = lineno;
    this->nodetypes = type;
    this->node_name = node_name;
};

TreeNode::TreeNode(TreeNode* node) {
    this->lineno = node->lineno;
    this->nodetypes = node->nodetypes;
    this->node_name = node->node_name;
};

void TreeNode::addChild(TreeNode* child) {
    if (this->child == nullptr) {
        this->child = child;
    }
    else {
        this->child->addSibling(child);
    }
}

void TreeNode::addSibling(TreeNode* sibling){
    TreeNode* p = this;
    while (p->sibling != nullptr) {
        p = p->sibling;
    }
    p->sibling = sibling;
}

void TreeNode::printAST() {
    printNodeInfo();

    TreeNode *p = this->child;
    // if (p == nullptr) {
    //     cout << "├";
    // }
    while (p != nullptr) {
        p->printAST();
        p = p->sibling;
    } 
};

void TreeNode::printNodeInfo() {
    this->nodeTypeJudge(this->nodetypes);
    cout << nodeTypeJudge(this->nodetypes) << "\t" <<  this->node_name << endl;
};

string TreeNode::nodeTypeJudge (NodeTypes type){
    switch (type)
    {   
        case NDeclarations :
            return "NDeclarations";
        case NFunctionDeclarations :
            return "NFunctionDeclarations";
        case NStatement:
            return "NStatement";
        case NStatements:
            return "NStatements";
        case NAssign:
            return "NAssign";
        case NExpression:
            return "NExpression";
        case NRelational:
            return "NRelational";
        case NIdentifier:
            return "NIdentifier";
        case NFunctionDeclaration:
            return "NFunctionDeclaration";
        case NType:
            return "NType";
        case NLogicalOr:
            return "NLogicalOr";
	    case NLogicalAnd:
            return "NLogicalAnd";
	    case NEquality:
            return "NEquality";
        case NAdditive:
            return "NAdditive";
        case NMultiplicative:
            return "NMultiplicative";
        case NPrimary:
            return "NPrimary";
        case NUnary:
            return "NUnary";
        case NString:
            return "NString";
        case NProgram:
            return "NProgram";
        case NDeclaration:
            return "NDeclaration";
        
        default:
            return " ";
        
    }
};

int main(int argc, char **argv) {
	yyparse();
    if (programBlock != NULL)
    {
        programBlock->printAST();
    } else {
        cout<< "error" << endl;
    }
	return 0;
}