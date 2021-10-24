%{
#include<stdio.h>
int val, r, digit=0, count, pcount=0, i;
char a[20];
%}

obj [0-9]
%%
{obj}+ {val=atoi(yytext);
        while(val!=0)
        {
  
            r=val%16;
            digit='0'+r;
            if(digit>'9')
            digit+=7;
            a[count++]=digit;
            val=val/16;
  
        }
  
        for(i=count-1;i>=pcount;--i)
            printf("%c", a[i]);
        pcount=count;
        }
.|\n    ECHO;
%%
int yywrap(){}
int main()
{
extern FILE *yyin;
  
yyin = fopen("input.txt","r"); 

yylex();
}
