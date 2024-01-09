%{
#include <string>
#include <map>
#include <iostream>

using namespace std;

int total = 0;
map<string, int> ips;

%}

digit		[0-9]
octet		{digit}|[1-9]{digit}{digit}|[2][0-4]{digit}|[25][0-5]
ip4		{octet}\.{octet}\.{octet}\.{octet}

%%

{ip4}		{
			total++;
			string ipAddress(yytext);
			ips[ipAddress]++;
		}
\n
.

%%

int main(int argc, char *argv[]){
	yyin = fopen(argv[1], "r");
	yylex();
	cout << "IPv4 format found " << total << " times." << endl;	
	cout << "Amount of uniques IP's : " << ips.size() << endl;
	cout << "List of all uniques IP's:" << endl;
	for(const auto &entry : ips){
		cout << entry.first << " show up " << entry.second << " times." << endl;
	}
	return 0;
}
