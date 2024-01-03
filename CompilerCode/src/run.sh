bison -d parser.y
flex token.l
# g++ -o ast parser.tab.c lex.yy.c ast.cpp graph_helper.h graph_helper.cpp
g++ -o parser parser.tab.c lex.yy.c
./parser < 1.txt

echo done
