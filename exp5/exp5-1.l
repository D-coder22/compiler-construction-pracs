%{
    #include<stdio.h>
    #include<math.h>
%}
digit [0-9]+
%%
{digit} return atoi(yytext);
[\n] return 0;
%%

int yywrap(){
  return 0;
}
  
int main(){
    float sum=0, num, n=0;
    while((num=yylex())>0){
    sum = sum+num;
    n = n+1;
}
printf("Average = %f\n",sum/n);
yylex();
return 0;
}