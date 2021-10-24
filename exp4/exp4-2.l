%{
#include<stdio.h>
%}

%%
if|else|for|int|float|while|int|float printf("<%s, keyword>\n", yytext);
#include<.*> printf("<%s, preprocessing-directive>\n", yytext);
[a-zA-Z_][a-zA-Z0-9_]* printf("<%s, identifier>\n", yytext);
[-]?[0-9]*[.]?[0-9]+? printf("<%s, Numeric Constant>\n", yytext);
[+|*|%|=|/|] printf("<%s, Operator>\n", yytext);
[{|}] printf("<%s, Parenthesis>\n", yytext);
%%
int yywrap(){}
int main()
{
yylex();
}