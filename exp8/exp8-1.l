%{
#include "y.tab.h"
extern int yylval;
%}
%%
while		     			         {return WHILE;}
[;|,]					             {return DELIM;}
[a-zA-Z_][a-zA-Z_0-9]*		 {return ID;}
"="					               {return ASIGN_OP;}
["<"|">"]			             {return RELOP;}
"<="					             {return RELOP;}
">="					             {return RELOP;}
"=="					             {return RELOP;}
[0-9]+				             {return NUMBER;}
"++"                       {return INC_OP;}
"--"                       {return DEC_OP;}
[)(}{\n]                   {return *yytext;}
.                          {printf("Invalid Character, %s", yytext);}
%%