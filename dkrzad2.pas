Program Kr2_zad2;
var
  words : array of string;
  z: array of integer;
  k, i, max, x: integer;
  s: string;
begin
  write('Введите строку : ');
  readln(s);
  setlength(words, (length(s) div 2) + 1);
  setlength(z, length(words));
  k := 0;
  for i := 1 to length(s) do
  begin
    if s[i] <> ' ' then
      words[k] := words[k] + s[i]
    else
      k := k + 1;
  end;
  for i := 0 to (length(words) - 1) do
  begin
    if words[i] <> '' then
    begin
      z[i] := 1;
      for k := i + 1 to (length(words) - 1) do
      begin
        if words[i] = words[k] then
        begin
          z[i] := z[i] + 1;
          words[k] := '';
        end;
      end;
    end;
  end;
  max := 0;
  x := 0;
  for i := 0 to (length(words) - 1) do
  begin
    if z[i] > max then
    begin
      max := z[i];
      x := i;
    end;
  end;

  write('Часто повторяемое слово: ' ,  words[x]);
end.