%option noyywrap yylineno
%{

#include <string>
#include <iostream>
#include "node.h"
#include "parser.tab.h"
extern int lineno;

#define SAVE_TOKEN yylval.string = new std::string(yytext,yyleng)
#define TOKEN(t) (yylval.token=t)
%}


%%

[ \t] {}
\n {lineno++;}
[0-9]+  {SAVE_TOKEN; return TINTEGER;}
"void" {return TOKEN(TVOID);}
"return" {return TOKEN(TRETURN);}
"const" {return TOKEN(TCONST);}
"int" {return TOKEN(TINT);}
"if" {return TOKEN(TIF);}
"else" {return TOKEN(TELSE);}

[a-zA-Z_][a-zA-Z0-9_]* {SAVE_TOKEN; return TIDENTIFIER;}

";"  {return TOKEN(TSEMICOLOM);}
","  {return TOKEN(TCOMMA);}
"("  {return TOKEN(TLPAREN);}
")"  {return TOKEN(TRPAREN);}
"["  {return TOKEN(TLMPAREN);}
"]"  {return TOKEN(TRMPAREN);}
"{"  {return TOKEN(TLBPAREN);}
"}"  {return TOKEN(TRBPAREN);}

"-"  {return TOKEN(TMINUS);}
"!"  {return TOKEN(TNOT);}
"~"  {return TOKEN(TWAVE);}

"+"  {return TOKEN(TPLUS);}
"/"  {return TOKEN(TDIV);}
"*"  {return TOKEN(TMULTI);}
"%"  {return TOKEN(TMOD);}

"<"  {return TOKEN(TL);}
"<=" {return TOKEN(TLE);}
">"  {return TOKEN(TG);}
">=" {return TOKEN(TGE);}
"!=" {return TOKEN(TNE);}
"==" {return TOKEN(TE);}
"&&" {return TOKEN(TLOGAND);}
"||" {return TOKEN(TLOGOR);}

"=" {return TOKEN(TASSIGN);}
<<EOF>> {yyterminate();}
%%