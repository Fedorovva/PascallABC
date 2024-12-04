program AverageOnMainDiagonal;
var
  matrix: array[1..100, 1..100] of real; // Масив для квадратної матриці
  n, i, j: integer; // Змінні для розміру матриці та лічильників
  sum, average: real; // Змінні для суми та середнього значення
begin
  writeln('Enter the size of the square matrix (n):'); // Введення розміру
  readln(n); // Зчитування розміру
  randomize; // Ініціалізація генератора випадкових чисел
  
  writeln('Generated matrix elements:'); // Повідомлення для виведення
  
  // Генерація випадкових значень для матриці
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      matrix[i, j] := random(201) - 100; // Генерація значення від -100 до 100
      write(matrix[i, j]:8:2); // Виведення значення
    end;
    writeln; // Перехід на новий рядок
  end;

  sum := 0; // Ініціалізація суми
  for i := 1 to n do
    sum := sum + matrix[i, i]; // Додавання елементів головної діагоналі
  
  average := sum / n; // Розрахунок середнього
  writeln('The average of the main diagonal elements is: ', average:0:2); // Виведення результату
end.
