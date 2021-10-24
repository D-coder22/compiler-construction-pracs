%{
#include<iostream>
#include<string>
using namespace std;
int len=0;
string word;
%}
%option noyywrap
%%
[a-zA-Z]+ {if(yyleng>word.length())
            {
              word = yytext;
            }}
%%
int main()
{
cout << "Longest word is \"" << word << "\" of length "<< len;
return 0;
}