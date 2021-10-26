%{
    #include<stdio.h>
    #include<math.h>
    #include <ctype.h>
%}
%option noyywrap
word [a-zA-Z]+
%%
{word} {for(int i=0; i<yyleng; i++){

         yytext[i]+=3;
         if((islower(yytext[i]-3) && yytext[i]>'z' ))
         {
           yytext[i] -= ('z'+1- 'a');
         }
         else if((isupper(yytext[i]-3) && yytext[i] > 'Z'))
         {
           yytext[i]-= ('Z'+1- 'A');
         }
        }
        printf("The Cipher is \"%s\"",yytext);
      }
%%


  
int main(){
yylex();
return 0;
}