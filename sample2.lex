%%
username	printf("%s", getlogin());
%%
int main(){
	yylex();
	return 0;
}
