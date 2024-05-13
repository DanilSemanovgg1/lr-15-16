program zad3;
type PNode = ^Node;
Node = record
  el: string[40];
  next: PNode;
end;

var
  pp: PNode;
  Head: PNode;
  i: integer;
  str: String;

function CreateNode(NewWord: string): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.el := NewWord;
  NewNode^.next := nil;
  Result := NewNode;
end;

begin
  New(Head);
  pp:= Head;
  for i:= 0 to 9 do
  begin
    readln(str);
    pp^.next := CreateNode(str);
    pp := pp^.next;
  end;
  pp:= Head;
  pp:= pp^.next;
  i:= 1;
  while pp <> nil do
  begin
    
    writeln(i,' ',pp^.el);
    i += 1;
    pp := pp^.next;
    end;
  
end.