%{
#include<stdio.h>
%}
%token DIGIT NL
%left '+' '-'
%%
E : E '+' T NL  	{$$=$1+$3; printf("%d + %d = %d ", $1, $3, $$); return;}
  | T
  ;
T : T '-' F NL  	{$$ = $1 - $3; printf("%d - %d = %d", $1, $3, $$); return;}
  |F
  ;
F : '(' E ')'   	{$$ = $2; printf (" E = %d", $$); return;}
  |DIGIT   
  ;
%%

yywrap(){}
int main(void)
{
 printf("\n Enter the expression:");
 yyparse();
}
void yyerror()
{
 printf("\n ERROR");
}