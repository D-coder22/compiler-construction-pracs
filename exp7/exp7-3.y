%{ 
#include<stdio.h>
%}
%token NUMBER ID WHILE RELOP BRAC DELIM PAREN ASIGN_OP
%%
stmts  	: wstmt			    {printf("\n stmts -> wstmt  	   \n"); return;}
	      | DELIM			    {printf("\n stmts -> ;      	   \n");}
	      | astmt stmts		{printf("\n stmts -> astmt stmts; \n");}
	      |			          {printf("\n stmts -> empty; \n");}
	      ;				
wstmt	  : WHILE BRAC expr BRAC stmts      	       {printf("\n stmt -> while (expr);          \n");}
	      | WHILE BRAC expr BRAC PAREN stmts PAREN   {printf("\n stmt -> while (expr){[stmts]*} \n");}
	      ;
expr    : expr RELOP expr		{printf("\n expr -> expr RELOP expr      \n"); }
	      | NUMBER			      {printf("\n expr -> NUMBER        	 \n"); }
	      | ID				        {printf("\n expr -> ID 		         \n"); }
	      ;
astmt   : ID ASIGN_OP expr DELIM	{printf("\n astmt -> ID ASIGN_OP expr    \n"); }
	      ;
%%
int yywrap(){return 1;}
void yyerror(char *s) 
{
	printf("\n ERROR");
}
int main(void)
{
        printf("\nEnter the statement:");
       yyparse();
}