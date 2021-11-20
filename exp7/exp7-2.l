%{
#include "y.tab.h"
extern int yylval;
%}
%%
[0-9]+    {yylval = atoi(yytext); return DIGIT;}
[+-]      {return *yytext;}
[\n]      {return NL;}
[ ]       { }
