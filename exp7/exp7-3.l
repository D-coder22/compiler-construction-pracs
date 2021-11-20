%{
#include "y.tab.h"
extern int yylval;
%}
%%
while		     			{return WHILE;}
[(|)]					{return BRAC;}
[{|}]					{return PAREN;}
[;|,]					{return DELIM;}
[a-zA-Z_][a-zA-Z_0-9]*		{return ID;}
"="					{return ASIGN_OP;}
["<"|">"]				{return RELOP;}
"<="					{return RELOP;}
">="					{return RELOP;}
"=="					{return RELOP;}
[0-9]+					{return NUMBER;}
%%