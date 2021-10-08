%{
#include<stdio.h>
%}
%%
if|else|for|int|float printf("<keyword, %s>", yytext);
^[if|else|for|int|float] printf("%s",yytext);
%%
int main()
{
yylex();
}
int yywrap(){}