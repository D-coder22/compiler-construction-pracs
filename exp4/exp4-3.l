%{
#include<stdio.h>
#include<string.h>
int len=0;
char word[100];
%}

%%
[a-zA-Z]+ {if(yyleng>len)
            {
              len = yyleng;
              strcpy(word,yytext);
            }}
%%
int main()
{
extern FILE *yyin;
  
yyin = fopen("input2.txt","r"); 
yylex();
printf("Longest word is \"%s\" of length %d\n",word,len);
}
int yywrap(){}