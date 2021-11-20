%{
#include "y.tab.h"
%}
%%
"Morning"  {return MOR;}
[\n]       {return NEWLINE;}
[ ]        {}
%%