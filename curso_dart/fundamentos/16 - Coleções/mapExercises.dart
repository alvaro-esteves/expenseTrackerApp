//EXERCICIO 1: Given a list of integers, use the map function to create a new list containing the squares of each integer.
// EXERCICIO 2: Given a list of lowercase strings, use the map function to create a new list containing the
//uppercase version of each string.
//EXERCICIO 3:

Square() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> numbersMapped = numbers.map((int e) => e * e).toList();
  print(numbersMapped);
}

Uppercase() {
  List<String> words = ['dart', 'flutter', 'code'];
  String? word;
  List<String> wordsMapped = words.map((e) => e.toUpperCase()).toList();
  print(wordsMapped);
}

void main() {
  Square();
  Uppercase();
}
