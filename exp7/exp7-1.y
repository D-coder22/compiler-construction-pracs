%{
#include<stdio.h>
%}
%token MOR NEWLINE
%%
msg: MOR NEWLINE   {
                        char name[20];
                        printf("May I know your name");
                        scanf("%s", name);
                        printf("\n\n Morning %s", name);
                        printf("\nEnd of successful execution\n");
                        return;
                    };
%%

int main()
{
        yyparse();
        return 0;
}
void yyerror()
{
        printf("\n ERROR  ");
        printf("Enter Morning only");
}