program convtemp;
var
    c1: char;
    c2: char;
    t: real;
begin
    readln(c1);
    readln(c2);
    readln(t);
    if ((c1 = 'C') and (c2 = 'F')) then
        writeln((t * 9 / 5) + 32:0:2)
    else if ((c1 = 'C') and (c2 = 'K')) then
        writeln(t + 273.15:0:2)
    else if ((c1 = 'F') and (c2 = 'C')) then
        writeln((t - 32) * 5 / 9:0:2)
    else if ((c1 = 'F') and (c2 = 'K')) then
        writeln((t - 32) * 5 / 9 + 273.15:0:2)
    else if ((c1 = 'K') and (c2 = 'C')) then
        writeln(t - 273.15:0:2)
    else if ((c1 = 'K') and (c2 = 'F')) then
        writeln((t - 273.15) * 9 / 5 + 32:0:2)
end.
