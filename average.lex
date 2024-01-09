%{
#include <iostream>
#include <map>
#include <string>
#include <cstring>

using namespace std;

int amount = 0;
float sum = 0.0;
map<string, float> grades;

%}
%option noyywrap
%%
[2345](\.5)?			{
					amount++;
					sum += atof(yytext);
				}
(\+|\-)?[a-z]{3}		{
					amount++;
					sum += grades[string(yytext)];
				}
^[A-Z][a-z]*a\ [A-Z][a-z]*	printf("%s otrzymala srednia ", yytext);
^[A-Z][a-z]*\ [A-Z][a-z]*	printf("%s otrzymal srednia ", yytext);
\n				{
					printf(" %f\n", sum / amount);
					amount = 0;
					sum = 0;
				}
.
%%
int main(){
	grades[string("dop")] = 2.0;
	grades[string("+dop")] = 2.5;
	grades[string("-dst")] = 2.5;
	grades[string("dst")] = 3.0;
	grades[string("+dst")] = 3.5;
	grades[string("-dob")] = 3.5;
	grades[string("dob")] = 4.0;
	grades[string("+dob")] = 4.5;
	grades[string("-bdb")] = 4.5;
	grades[string("bdb")] = 5;

	yylex();
	return 0;
}
