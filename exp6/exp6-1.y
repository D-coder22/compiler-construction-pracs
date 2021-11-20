%{ 
#include<ctype.h>
#include<stdio.h>
%}
%token DIGIT
%%
line : expr '\n'                {printf("%d\n", $1);}
     ;
expr : expr '+' term            { $$ = $1 + $3; }
     | term
     ;
term : term '*' factor          { $$ = $1 * $3; }
     | factor
     ;
factor : '(' expr ')'           { $$ = $2; }
       | DIGIT
       ;
%%
int yylex(void){
        int c;
        c = getchar();
        if(isdigit(c)){
                yylval = c-'0';
                return DIGIT;
        }
        return c;
}
int yywrap(){return 1;}
void yyerror(char *s) 
{
fprintf(stderr, "%s\n", s);
}
int main(void)
{        
return yyparse();
}