%{
/* Ici on définit les variables globales ou les constantes si besoin.
* Et les commentaires.
*/
#include "parser.h"
%}
%option nounput
%option noinput
%option noyywrap
%%
[a-zA-Z_][a-zA-Z_0-9]* { return ID; }
[/*%] { return DIVSTAR; }
[ \t\n]* ;
. { return yytext[0]; };
%%