program zad3;
type PNode = ^Node;
Node = record
  el: integer;
  next: PNode;
end;

var
  pp: PNode;
  Head: PNode;
  i,max,min,num7: integer;

function CreateNode(num : integer): PNode;
var NewNode: PNode;
begin
  New(NewNode);
  NewNode^.el := num;
  NewNode^.next := nil;
  Result := NewNode;
end;

begin
  New(Head);
  pp:= Head;
  min:= 99;
  max := -99;
  for i:= 0 to 5 do
  begin
    readln(num);
    pp^.next := CreateNode(num);
    pp := pp^.next;
  end;
  pp:= Head;
  pp:= pp^.next;
  while pp <> nil do
  begin
    if pp^.el > max then
      max := pp^.el;
    if pp^.el < min then
      min:= pp^.el;
    pp := pp^.next;
    end;
  writeln('min = ', min,' max = ',max);
end.