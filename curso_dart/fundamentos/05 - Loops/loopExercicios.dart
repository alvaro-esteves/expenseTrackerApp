/*Write a Flutter.dart program to print all the elements of a list using a for-in loop.*/

void main() {
  print('Exercise 1:');
  /*Write a Flutter.dart program to print all the elements of a list using a for-in loop.*/
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7];

  for (int digito in numeros) {
    print('lista: $digito');
  }

  print('\nExercise 2:');
  /*Write a Flutter.dart program to find the sum of all elements in a list using a for-in loop.*/
  List<int> lista = [1, 2, 3, 4, 5];
  int soma = 0;

  for (int lis in lista) {
    soma += lis;
  }
  print('soma dos objetos na lista: $soma\n');

  print('Exercise 3:');
  /*Write a Flutter.dart program to find the maximum element in a list using a for-in loop.*/
  List<int> numbers = [1, 2, 3, 4, 5];
  int max = numbers[0];
  print('Valor inicial de max: $max');

  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }
  print('Maximum element in the list: $max\n');

  print('Exercise 4:');
  //Write a Flutter.dart program to count the number of even elements in a list using a for-in loop.
  List<int> lista2 = [1, 2, 3, 4, 5];
  int count = 0;

  for (int number in lista2) {
    if (number % 2 == 0) {
      count++;
    }
  }
  print('Number of even elements in the list: $count');

  print('Exercise 5');
  //Write a Flutter.dart program to display even and odd numbers from a list of integers using for-in loops.
  //Create two separate lists, one for even numbers and one for odd numbers, and print them.
  List<int> evenOdd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = [];
  List<int> oddNumbers = [];

  for (int n in evenOdd) {
    if (n % 2 == 0) {
      evenNumbers.add(n);
    } else {
      oddNumbers.add(n);
    }
  }
  print(evenNumbers);
  print(oddNumbers);
}
