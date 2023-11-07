%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
void yyerror(char* message);
int yylex();
%}
%token ID
%token DIVSTAR
%%
E : T
  ;
T : T DIVSTAR ID 
  | ID
  ;
%%
void yyerror(char* message) {
    fprintf(stderr, "ERROR\n");
}