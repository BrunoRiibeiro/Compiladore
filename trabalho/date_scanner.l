/* Bruno Campos Ribeiro - 211039288
   Bruno Martins Valério Bomfim - 211039297
   Igor e Silva Penha - 211029352
   Lucas Gobbi Bergholz - 211029441 
*/
%{
int date_count = 0;
%}

day ((0[1-9])|([1-2][0-9]))
fev ((0[1-9])|([1-2][0-8])|([1][9]))
monthThirty (([0][4|6|9])|11)
monthThirtyOne (([0][1|3|5|7|8])|[1][0|2])
year ((19[0-9][0-9])|(20[0-1][0-9])|(202[0-3]))
biye (19([0][4|8])|19([1|3|5|7|9][2|6])|19([2|4|6|8][0|4|8])|200[0|4|8]|201[2|6]|2020)
slash \/

%%
{fev}{slash}[0][2]{slash}{year} {date_count++;}
({day}|([3][0])){slash}{monthThirty}{slash}{year} {date_count++;}
({day}|([3][0|1])){slash}{monthThirtyOne}{slash}{year} {date_count++;}
[2][9]{slash}[0][2]{slash}{biye} {date_count++;}
[ ]+
[\t]+
[\n]+
.
%%

int yywrap() {return 1;}

int main() {
	yylex();
	printf("%d\n", date_count);
	return 0;
}
