program zad2;
type PNode = ^Node;
Node = record
  word: string[100];
  count: integer;
  next: PNode;
end;
////// основной вар
var
  pp: PNode;
  Head: PNode;
  f: Text;
  str: String;
  
function CreateNode(NewWord: string): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.word := NewWord;
  NewNode^.count := 1 ;
  NewNode^.next := nil;
  Result := NewNode;
end;

function TakeWord ( F: Text ) : string;
var c: char;
begin
  Result := ''; { пустая строка }
  c := ' ';     { пробел – чтобы войти в цикл }  
    { пропускаем спецсимволы и пробелы }
  while not eof(f) and (c <= ' ') do 
    read(F, c);  
    { читаем слово }  
  while not eof(f) and (c > ' ') do begin
    Result := Result + c;
    read(F, c);
  end;
end;

begin 
  new(Head);
  assign(f,'C:\Users\Артём\Documents\КОЛЛЕДЖ\Paskal\PR 15\input.txt');
  Reset(f);
  pp := Head;
 while not Eof(f) do
begin
  str := TakeWord(f);
  
  pp := Head; // Сброс указателя на начало списка
  
  while pp^.next <> nil do
  begin
    if str = pp^.word then
    begin
      
      Exit;
    end;
    
    pp := pp^.next;
  end;
  
  if pp^.word <> str then // Добавляем слово только если его нет в списке
  begin
    pp^.next := CreateNode(str);
    pp := pp^.next;
  end
  else
  begin
    pp^.count := pp^.count + 1;
  end;
end;

  pp := Head;
  while pp <> nil do
  begin
    writeln(pp^.word,' ',pp^.count);
    pp := pp^.next;
  end;
end.