program ajudeaparecido;
var
	n, c, sum, doc: integer;
begin
	readln(n);
	sum := 0;
	while n > 0 do
	begin
		read(c);
		sum := sum + c;
		n := n - 1;
	end;
	readln(doc);
	if (sum = doc) then
		writeln('Acertou')
	else
		writeln('Errou');
end.
