program zad1;
var 
  i:integer;
  i_ptr: ^integer;    
begin
  i:=2;
  i_ptr := @i;
  writeln('Значение i_ptr: ', i_ptr^);
  writeln('Адрес :', i_ptr);
end.