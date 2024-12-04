program AverageOnMainDiagonal_CustomRange;
var
  matrix: array[1..100, 1..100] of real;
  n, i, j, minRange, maxRange: integer;
  sum, average: real;
begin
  writeln('Enter the size of the square matrix (n):');
  readln(n);

  writeln('Enter the minimum value for random numbers:');
  readln(minRange);
  writeln('Enter the maximum value for random numbers:');
  readln(maxRange);

  randomize;
  writeln('Generated matrix elements:');
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      matrix[i, j] := minRange + random(maxRange - minRange + 1);
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
