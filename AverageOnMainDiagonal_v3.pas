program AverageOnMainDiagonal_OptimizedInput;
var
  matrix: array[1..100, 1..100] of real;
  n, i, j, choice: integer;
  sum, average: real;
begin
  writeln('Enter the size of the square matrix (n):');
  readln(n);

  writeln('Do you want to (1) enter elements manually or (2) generate randomly?');
  readln(choice);

  if choice = 1 then
  begin
    writeln('Enter the elements of the matrix:');
    for i := 1 to n do
      for j := 1 to n do
        read(matrix[i, j]);
  end
  else if choice = 2 then
  begin
    randomize;
    writeln('Generated matrix elements:');
    for i := 1 to n do
    begin
      for j := 1 to n do
      begin
        matrix[i, j] := random(201) - 100;
        write(matrix[i, j]:8:2);
      end;
      writeln;
    end;
  end
  else
  begin
    writeln('Invalid choice. Program will exit.');
    exit;
  end;

  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];
  
  average := sum / n;
  writeln('The average of the main diagonal elements is: ', average:0:2);
end.
