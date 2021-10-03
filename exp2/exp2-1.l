%{
#include<stdio.h>
%}
%%
[0-9]+  	printf("Number\n");
[a-zA-Z]*   printf("Word\n");
%%
int main()
{
    	yylex();
    	return 0;
}
int yywrap(){}