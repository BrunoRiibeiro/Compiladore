program soman;
var
	n, x: integer; 
	sum: longint;
begin
	readln(n);
	sum := 0;
	while n > 0 do
	begin
		readln(x);
		sum := sum + x;
		n := n - 1;
	end;
	writeln(sum);
end.
