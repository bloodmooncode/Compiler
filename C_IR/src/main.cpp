
#include <getopt.h>
#include <cstdio>
#include <iostream>
#include <cstring>
#include "../include/error.h"
#include "../include/node.h"
#include "./frontend/parser.hpp"

extern int yyparse();
extern int     yyrestart(FILE*);
extern FILE *yyin;
int yyline;
extern NODE base_node;
extern NODE base_ir;
FILE *output;
int main(int argc,char* argv[]){
    // 处理input_fil
    if (argc<2) {
        yyparse();
        return 0;
    }
    bool fflush = false;
    char *input_file = nullptr, *output_file = nullptr;
    for(int ch; (ch = getopt(argc, argv, "O:So:")) != -1;)
    {
        switch(ch)
        {
            case 'S':
                break; // 啥也不干，为了测评机
            case 'o':
                fflush=true;
                output_file = strdup(optarg);
                break;
            case 'O':
                break;
            default:
                break;
        }
    }
    input_file = argv[argc-1];
    yyin = fopen(input_file,"r");
    if(output_file!= nullptr){
        output = fopen(output_file,"w"); } else{
        output = stdout;
    }
    if(!yyin)
        perror(input_file);
    yyparse();
    printf("\n==============================\n");
    value_replace(&base_node,0);
    printf("==============================\n");
    ast_to_ir(&base_ir,&base_node,0,"");
    printf("==============================\n");
    show_ir(&base_ir,0);
    printf("==============================\n");
    cal_ir(&base_ir,0);
    printf("==============================\n");
    if(fflush){
        //printf ("\033c"); 
        gen_ir(&base_ir,0);
    }
    else{
        gen_ir(&base_ir,0);
    printf("==============================\n");
    }
    return 0;
}
/*
docker run -it --rm -v /home/dongyubo/桌面/Compiler/C_IR:/root/compiler maxxing/compiler-dev bash
koopac ir_gen.koopa | llc --filetype=obj -o ir_gen.o
objdump -d ir_gen.o -M no-aliases,numeric > ir_gen_s.txt


*/