%{
#include <stdio.h>
#include <stdlib.h>
%}

 // expressao regular
IGNORAR [\t\n]       
NUMERO [0-9]+
OPERADOR [+\-*/]
IGUALDADE [=]



%%
 // tokens
{NUMERO}   {printf("Número: %s\n", yytext); }
{OPERADOR} {printf("Operador matemático: %s\n", yytext); }
{IGNORAR}  { /* ignora tab e linhas */ }
{IGUALDADE} {printf("igualdade\n");}

%%

// main
int main() {
    yyin = fopen("entrada.d", "r");
    yylex();
    fclose(yyin);
    return 0;
}
