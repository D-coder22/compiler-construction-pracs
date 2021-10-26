%{
    #include<stdio.h>
    #include<math.h>
%}
%option noyywrap

name ^[A-Z][a-z]+([ ])[A-Z][a-z]*([ ])[A-Z][a-z]*
place ^[A-Z][a-z]+[-]?[a-z]*[,]([ ])[A-Z][a-z]+[-][A-Z][a-z]+
bankno [0-9]{10}
%%
{name} printf("%s is a Person's Name\n",yytext);
{place} printf("%s is a Office Address\n",yytext);
{bankno} printf("%s is a Bank account number\n",yytext);
%%
int main(){
yylex();
return 0;
}