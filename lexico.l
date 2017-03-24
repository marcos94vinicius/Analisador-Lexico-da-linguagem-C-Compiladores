/* Nao usar a biblioteca do flex*/
%option noyywrap

%x IN_COMMENT

%{
#include<string.h>

int chars = 1;//contador de char
int token = 0;//contador de token
int lines = 1;//contador de linha
int lines2 = 0;
int chars2 = 1;
int pula_linha = 0;
int i=0;
char *string;

%}

%%

"void"     {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("VOID");chars+=strlen(yytext);token++;}
"int"      {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("INT");chars+=strlen(yytext);token++;}
"char"     {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("CHAR");chars+=strlen(yytext);token++;}
"return"   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("RETURN");chars+=strlen(yytext);token++;}
"break"    {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("BREAK");chars+=strlen(yytext);token++;}
"switch"   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("SWITCH");chars+=strlen(yytext);token++;}
"case"     {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("CASE");chars+=strlen(yytext);token++;}
"default"  {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("DEFAULT");chars+=strlen(yytext);token++;}
"do"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("DO");chars+=strlen(yytext);token++;}
"while"    {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("WHILE");chars+=strlen(yytext);token++;}
"for"      {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("FOR");chars+=strlen(yytext);token++;}
"if"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("IF");chars+=strlen(yytext);token++;}
"else"     {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("ELSE");chars+=strlen(yytext);token++;}
"typedef"  {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("TYPEDEF");chars+=strlen(yytext);token++;}
"struct"   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("STRUCT");chars+=strlen(yytext);token++;}
"+"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("PLUS");chars+=strlen(yytext);token++;}
"-"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("MINUS");chars+=strlen(yytext);token++;}
"*"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("MULTIPLY");chars+=strlen(yytext);token++;}
"/"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("DIV");chars+=strlen(yytext);token++;}
"%"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("REMAINDER");chars+=strlen(yytext);token++;}
"++"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("INC");chars+=strlen(yytext);token++;}
"--"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("DEC");chars+=strlen(yytext);token++;}
"&"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("BITWISE_AND");chars+=strlen(yytext);token++;}
"|"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("BITWISE_OR");chars+=strlen(yytext);token++;}
"~"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("BITWISE_NOT");chars+=strlen(yytext);token++;}
"^"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("BITWISE_XOR");chars+=strlen(yytext);token++;}
"!"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("NOT");chars+=strlen(yytext);token++;}
"&&"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("LOGICAL_AND");chars+=strlen(yytext);token++;}
"||"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("LOGICAL_OR");chars+=strlen(yytext);token++;}
"=="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("EQUAL");chars+=strlen(yytext);token++;}
"!="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("NOT_EQUAL");chars+=strlen(yytext);token++;}
"<"  	   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("LESS_THAN");chars+=strlen(yytext);token++;}
">"	   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("GREATER_THAN");chars+=strlen(yytext);token++;}
"<="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("LESS_EQUAL");chars+=strlen(yytext);token++;}
">="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("GREATER_EQUAL");chars+=strlen(yytext);token++;}
">>"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("R_SHIFT");chars+=strlen(yytext);token++;}
"<<"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("L_SHIFT");chars+=strlen(yytext);token++;}
"="        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("ASSIGN");chars+=strlen(yytext);token++;}
"+="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("ADD_ASSIGN");chars+=strlen(yytext);token++;}
"-="       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("MINUS_ASSIGN");chars+=strlen(yytext);token++;}
";"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("SEMICOLON");chars+=strlen(yytext);token++;}
","        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("COMMA");chars+=strlen(yytext);token++;}
":"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("COLON");chars+=strlen(yytext);token++;}
"("        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("L_PAREN");chars+=strlen(yytext);token++;}
")"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("R_PAREN");chars+=strlen(yytext);token++;}
"{"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("L_CURLY_BRACKET");chars+=strlen(yytext);token++;}
"}"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("R_CURLY_BRACKET");chars+=strlen(yytext);token++;}
"["        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("L_SQUARE_BRACKET");chars+=strlen(yytext);token++;}
"]"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("R_SQUARE_BRACKET");chars+=strlen(yytext);token++;}
"?"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("TERNARY_CONDITIONAL");chars+=strlen(yytext);token++;}
"#"        {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("NUMBER_SIGN");chars+=strlen(yytext);token++;}
"->"       {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("POINTER");chars+=strlen(yytext);token++;}
"printf"   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("PRINTF");chars+=strlen(yytext);token++;}
"scanf"    {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("SCANF");chars+=strlen(yytext);token++;}
"define"   {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("DEFINE");chars+=strlen(yytext);token++;}
"exit"     {if(pula_linha != 0){printf("\n");}pula_linha=1;printf("EXIT");chars+=strlen(yytext);token++;}


0[1-7][0-7]*        { if(pula_linha!=0) printf("\n"); printf("NUM_OCTAL(%s)", yytext); chars+= strlen(yytext); pula_linha++;}
[0-9]+         { if(pula_linha!=0) printf("\n"); printf("NUM_INTEGER(%s)", yytext); chars+= strlen(yytext); pula_linha++; }
0[Xx][0-9a-fA-F]+   { if(pula_linha!=0) printf("\n"); printf("NUM_HEXA(%s)", yytext); chars+= strlen(yytext); pula_linha++; }

'[\\]?(.)'	        { string = malloc(strlen(yytext)*sizeof(char));strcpy(string, yytext); i = 0;
                        while(string[i] != '\0'){string[i] = string[i+1]; i++;} string[i-2] = '\0';
			if(pula_linha!=0) printf("\n"); printf("CHARACTER(%s)",string); chars+= strlen(yytext); pula_linha++;}

\"([^\\\"]|\\.)*\"	{ string = malloc(strlen(yytext)*sizeof(char)); strcpy(string, yytext); i = 0;
			while(string[i] != '\0'){string[i] = string[i+1];i++;} string[i-2] = '\0';
			if(pula_linha!=0) printf("\n"); printf("STRING(%s)",string); chars+= strlen(yytext); pula_linha++;}

[_a-zA-Z][_a-zA-Z0-9]*	{ if(pula_linha!=0) printf("\n"); printf("IDENTIFIER(%s)",yytext); chars+= strlen(yytext); pula_linha++;}
" "		{ chars+= strlen(yytext); }
"\t"        { chars+= strlen(yytext); }   
"//"(.)*"\n"	{ lines++; chars=1; yylineno++;}
"\n"		{ lines++; chars=1; yylineno++;}


<INITIAL>{
     "/*"  {lines2 = lines; chars2 = chars; chars+=2; }  BEGIN(IN_COMMENT);
     }

<IN_COMMENT>{
     <<EOF>>   { if(pula_linha!=0) printf("\n"); printf("error:lexical:%d:%d: unterminated comment",lines2,chars2); pula_linha++; }BEGIN(INITIAL);
     "*/"      { chars+=2; } BEGIN(INITIAL);
     [^*\n]+   { chars+= strlen(yytext);}
     "*"       { chars+= strlen(yytext);}
     \n        yylineno++;lines++;
     }
\/\/([^\n])* 			{ chars += strlen(yytext); }
.       {if(pula_linha!=0) printf("\n"); printf("error:lexical:%d:%d: %s",lines,chars,yytext); chars+= strlen(yytext); pula_linha++; }

%%

int main(int arc, char **argv){
   yylex();
   return 0;
}
