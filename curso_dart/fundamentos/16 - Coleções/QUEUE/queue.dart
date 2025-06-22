import 'dart:collection';

///
///*Queue e uma ordenada entre chaves{}, sem index que manipula o inicio e o fim da lista!
///

queue() {
  print('16.3.0) Queue\n');

  Queue<int> queue = Queue(); // import 'dart:collection'
  print('Implementacao: ${queue.runtimeType}');
  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  print(queue);
  queue.removeLast();
  queue.forEach((e) => print(e));
}

void main() {
  queue();
}
