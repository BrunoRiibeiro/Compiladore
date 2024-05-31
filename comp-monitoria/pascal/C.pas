program ajudeaparecido;
var
	a: integer;
	b: integer;
	c: integer;
	sum: integer;
begin
	readln(a, b, c, sum);
	if (a+b+c = sum) then
		writeln('Acertou')
	else
		writeln('Errou');
end.
