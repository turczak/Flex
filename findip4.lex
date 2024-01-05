%{
#include <stdio.h>
#include <stdlib.h>
%}
digit       [0-9]
octet       {digit}|[1-9]{digit}|1{digit}{digit}|[2][0-4]{digit}|[25][0-5]
ip4         {octet}\.{octet}\.{octet}\.{octet}
%%
.           printf("");
{ip4}       printf("\nFound ipv4 : %s", yytext);
%%
int main(){
    while(1){
        printf("Give me your input to check.\n");
        yylex();
    }
    return 0;
}