//EXERCISE 1: Write a function that filters out all even numbers from a list of integers.
//EXERCISE 2: Write a function that filters strings with a length greater than 5 from a list of strings.
//EXERCISE 3: Write a function that filters out negative numbers from a list of integers.

Even() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //List<int> even = numbers.where((int e) => e % 2 == 0).toList();
  //or
  List<int> even = numbers.where((e) => e.isEven).toList();
  print(even);
}

Length() {
  List<String> words = ['Mara', 'Mario', 'Anderson', 'Alejandro', 'Gia', 'Gaia'];
  List<String> length = words.where((e) => e.length >= 5).toList();
  print(length);
}

Negative() {
  List<int> negative = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5];
  List<int> negativeFilter = negative.where((e) => e >= 0).toList();
  print(negativeFilter);
}

void main() {
  Even();
  Length();
  Negative();
}
