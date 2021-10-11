%{
#include<stdio.h>
%}

%%
printf printf("<keyword, %s>\n", yytext);
[(|)|,|;] printf("<delim,%s>\n", yytext);
["].*["] printf("<literal,%s>\n", yytext);
[-]?[0-9]* printf("<num,%s>\n", yytext);
[-]?[0-9]*[.][0-9]+* printf("<float,%s>\n", yytext);
[a-zA-Z_][a-zA-Z0-9_]* printf("<id,%s>\n", yytext);
%%
int yywrap(){}
int main()
{
extern FILE *yyin;
  
yyin = fopen("input2.txt","r"); 

yylex();
}