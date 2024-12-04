program AverageOnMainDiagonal; // Назва програми
var
  matrix: array[1..100, 1..100] of real; // Оголошення масиву для зберігання квадратної матриці
  n, i, j: integer; // Змінні для розміру матриці та лічильників циклів
  sum, average: real; // Змінні для суми та середнього значення
begin
  writeln('Enter the size of the square matrix (n):'); // Запит на введення розміру матриці
  readln(n); // Зчитування розміру матриці
  writeln('Enter the elements of the matrix:'); // Запит на введення елементів матриці
  for i := 1 to n do
    for j := 1 to n do
      read(matrix[i, j]); // Зчитування кожного елемента матриці

  sum := 0; // Ініціалізуємо суму нулем
  for i := 1 to n do
    sum := sum + matrix[i, i]; // Додаємо елемент головної діагоналі до суми

  average := sum / n; // Обчислюємо середнє арифметичне
  writeln('The average of the main diagonal elements is: ', average:0:2); // Виводимо результат із точністю до 2 знаків
end.
