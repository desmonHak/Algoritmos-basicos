(*Calculate Fibonacci Numbers using Pascal language*)
program Fibonacci;
Var
 n , t1 , t2 , nextterm : Integer;
BEGIN
 Writeln('Enter a positive number');
 Readln(n);
 Writeln('Fibonacci Series ');
 t1:=0; 
 t2:= 1; 
 Write(t1,' ',t2,' ');
 NextTerm:= t1+t2;
 while NextTerm < n do
 begin
 Write(NextTerm, ' '); 
 t1:= t2; 
 t2:= NextTerm ; 
 NextTerm := t1+t2; 
 end; 
END.
