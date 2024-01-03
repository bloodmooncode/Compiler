bison -d parser.y
flex token.l
g++ -o ast parser.tab.c lex.yy.c ast.cpp
./ast < 1.txt

echo done