%{
#include<stdio.h>
int lines = 1;
%}

line .*\n
%%
{line} {printf("%d. %s", lines++, yytext);}
%%
int yywrap(){}
int main()
{
extern FILE *yyin;
  
yyin = fopen("input.txt","r"); 

yylex();
}

