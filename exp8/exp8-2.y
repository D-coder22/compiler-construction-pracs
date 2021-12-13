%{ 
#include<stdio.h>
%}
%token NUMBER ID IF RELOP DELIM ASIGN_OP INC_OP DEC_OP COND_OP
%%
program: 
        program expr '\n'         { printf("Valid Nested IF\n"); } 
        |  
        ; 
expr: 
        IF '(' COND ')' '{' STMT '}'                    
        ; 

COND : COND COND_OP COND
     | ID RELOP ID
		 | ID RELOP NUMBER 
		 | NUMBER RELOP ID
     | NUMBER RELOP NUMBER
		 ;

STMT : expr
     | expr STMT
     | ID ASIGN_OP NUMBER DELIM
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