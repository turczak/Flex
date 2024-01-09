%{
#include <string>
#include <iostream>
#include <map>

using namespace std;

map<string, int> days;

%}

digit			[0-9]
year			{digit}{4}
day			{digit}{1,2}
month			([A-Z]{1}[a-z]{2})
specific_day		{day}\/{month}\/{year}

%%

{specific_day}		{
				string day(yytext);
				days[day]++;
			}	
.

%%

int main(int argc, char *argv[]){
	yyin = fopen(argv[1], "r");
	yylex();
	cout << "List of all days:" << endl;
	for(const auto &entry : days){
		cout << "In " << entry.first << " site was visited " << entry.second << " times." << endl;
	}
	return 0;
}
