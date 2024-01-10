%{
#include <string>
#include <iostream>
#include <fstream>

using namespace std;

fstream urls, mails;

%}

url			"http"("s")?("://")[^ \t\n\"]+
mail			[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.([A-Za-z]{2,}){1,}

%%

{url}			{
				string url(yytext);
				urls << url << endl;
			}
{mail}			{
				string mail(yytext);
				mails << mail << endl;
			}
.
\n

%%
int main(int argc, char *argv[]){
	yyin = fopen(argv[1], "r");
	urls.open("urls.txt", ios_base::out);
	mails.open("mails.txt", ios_base::out);
	yylex();
	urls.close();
	mails.close();
	return 0;
}
