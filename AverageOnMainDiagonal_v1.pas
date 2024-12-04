program AverageOnMainDiagonal;
var
  matrix: array[1..100, 1..100] of real;
  n, i, j: integer;
  sum, average: real;
begin
  writeln('Enter the size of the square matrix (n):');
  readln(n);
  writeln('Enter the elements of the matrix:');
  for i := 1 to n do
    for j := 1 to n do
      read(matrix[i, j]);

  sum := 0;
  for i := 1 to n do
    sum := sum + matrix[i, i]; // Додаємо елемент головної діагоналі

  average := sum / n; // Обчислюємо середнє значення
  writeln('The average of the main diagonal elements is: ', average:0:2);
end.
