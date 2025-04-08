%{
#include <stdio.h>
#include <stdlib.h>
%}

 //expressoes
TIPO (int|float|string)
DIGITO [0-9]
STRING \"([^\"\n]*)\"
LETRA [a-zA-Z]+
INT [0-9]+
LOGICO (\|\||!|==|!=|>|<|<=|>=|&)
ATRIB [=]
FLOAT [0-9]+\.[0-9]+
MATEMATICO (\*\*|[+\-\/\*%]|\+\+|\-\-)
SIMBOLO [;?:,._\(\)\{\}\[\]]
ESPACO [ \t\n\r]+ 
CONDICIONAL (if|else|switch|case|break)
REPETICAO (while|for|do)
FUNC (escreva|leia|funcao)
VARIAVEL {LETRA}({LETRA}|{DIGITO})*
COMENTARIO (\~.*)
COMENTARIO_linhas (~~[^~]*~~)


%%
 // tokens
{TIPO} {printf("TIPO: %s\n", yytext);}
{INT}   {printf("INTEIRO: %s\n", yytext); }
{MATEMATICO} {printf("OPERADOR MATEMATICO: %s\n", yytext); }
{LOGICO} {printf("OPERADOR LOGICO: %s\n", yytext); }
{ESPACO} {}
{ATRIB} {printf("ATRIBUICAO: %s\n", yytext);}
{FLOAT} {printf("FLOAT: %s\n", yytext);}
{STRING} {printf("STRING: %s\n", yytext);}
{SIMBOLO} {printf("SIMBOLO: %s\n", yytext);}
{CONDICIONAL} {printf("CONDICIONAL: %s\n", yytext);}
{REPETICAO} {printf("REPETICAO: %s\n", yytext);}
{FUNC} {printf("FUNCAO: %s\n", yytext);}
{VARIAVEL} {printf("VARIAVEL: %s\n", yytext);}
{COMENTARIO} {printf("COMENTARIO: %s\n", yytext);}
{COMENTARIO_linhas} {printf("COMENTARIO VÁRIAS LINHAS: %s\n", yytext);}

%%
// main
int main() {
    yyin = fopen("entrada.fco", "r");
    yylex();
    fclose(yyin);
    return 0;
}
