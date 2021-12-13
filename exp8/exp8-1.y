%{ 
#include<stdio.h>
%}
%token NUMBER ID WHILE RELOP DELIM ASIGN_OP INC_OP DEC_OP
%%
program: 
        program expr '\n'         { printf("Valid While Loop\n"); } 
        |  
        ; 
expr: 
        WHILE '(' COND ')' '{' STMT '}'                    
        ; 

COND : ID RELOP ID
		 | ID RELOP NUMBER 
		 | NUMBER RELOP ID
     | NUMBER RELOP NUMBER
		 ;

STMT : ID ASIGN_OP NUMBER DELIM
     | ID INC_OP DELIM           
     | ID DEC_OP DELIM
     | INC_OP ID DELIM
     | DEC_OP ID DELIM
		 | STMT STMT
		 ;
%%
int yywrap(){return 1;}
void yyerror(char *s) 
{
	printf("\n Syntax Error");
}
int main(void)
{
      printf("\nEnter the statement:");
      yyparse();
}