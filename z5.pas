program ReverseNumbers;
type
  TStack = record
    Items: array [1..100] of Integer; 
    Top: Integer;
  end;

procedure InitStack(var Stack: TStack); 
begin
  Stack.Top := 0;
end;

procedure Push(var Stack: TStack; Value: Integer); 
begin
  Inc(Stack.Top);
  Stack.Items[Stack.Top] := Value;
end;

function Pop(var Stack: TStack): Integer; 
begin
  Result := Stack.Items[Stack.Top];
  Dec(Stack.Top);
end;

var
  InputFile, OutputFile: Text; 
  Stack: TStack;
  Number: Integer;

begin
  Assign(InputFile, 'text1.txt');
  Reset(InputFile);

  Assign(OutputFile, 'output.txt');
  Rewrite(OutputFile);

  InitStack(Stack);

  while not Eof(InputFile) do
  begin
    Readln(InputFile, Number);
    Push(Stack, Number);
  end;

  while Stack.Top > 0 do 
    Writeln(OutputFile, Pop(Stack)); 

  Close(InputFile);
  Close(OutputFile);
end.
