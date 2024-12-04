program AverageOnMainDiagonal_SizeCheck;
var
  matrix: array[1..100, 1..100] of real;
  n, i, j: integer;
  sum, average: real;
begin
  writeln('Enter the size of the square matrix (n):');
  readln(n);

  if (n < 1) or (n > 100) then
  begin
    writeln('Error: Size of the matrix must be between 1 and 100.');
    exit;
  end;

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

  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i];
  
  average := sum / n;
  writeln('The average of the main diagonal elements is: ', average:0:2);
end.
