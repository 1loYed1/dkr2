Program Kr2_zad1;
var
  a:array [1..10] of integer;
  i,min:integer;
begin
  for i:=1 to 10 do begin
    read(a[i]) ;
  end;
  min:=abs(a[1]);
  for i:=1 to 10 do begin
    if abs(A[i]) < abs(min) then 
      min:=A[i];
  end;
  write('Минимальный по модулю элемент: ', min);
end.