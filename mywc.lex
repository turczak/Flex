%{
#include <stdio.h>
#include <stdlib.h>

int num_lines = 0;
int num_chars = 0;
int num_words = 0;
%}
%%
\n            num_lines++; num_chars++;
.             num_chars++;
[a-zA-Z]+     num_words++; num_chars += strlen(yytext);
%%
int main(int argc, char *argv[]){
    yyin = fopen(argv[1], "r");
    yylex();
    printf(" %d  %d  %d  %s\n", num_lines, num_words, num_chars, argv[1]);
    return 0;
}