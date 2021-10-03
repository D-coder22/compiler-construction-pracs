%{
#include<stdio.h>
%}
%%
[0-9]+           printf("postive integer");
"-"+[0-9]+       printf("negative integer");
[-+]?[0-9]+"."[0-9]+  printf("real number");
[a-zA-Z]*        printf("word");
%%
int main()
{
yylex();
return 0;
}
int yywrap(){}