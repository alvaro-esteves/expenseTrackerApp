//INHERITANCE
/*
void main() {
  var dog = Dog();
  dog.breed = 'Labrador';
  dog.color = 'black';
  dog.bark();
  dog.eat();

  var cat = Cat();
  cat.age = 5;
  cat.color = 'orange';
  cat.eat();
  cat.meow();

  var animal = Animal();
  animal.color = 'white';
  animal.eat();
}

class Animal {
  String? color;

  void eat() {
    print('Eat!');
  }
}

class Dog extends Animal {
  String? breed;

  void bark() {
    print("Bark!");
  }
}

class Cat extends Animal {
  int? age;

  void meow() {
    print("Meow!");
  }
}*/
// ABSTRACT CLASSES
void main() {
  var cow = Cow();
  cow.voice();
}

abstract class Animal {
  int legs = 4;
  int mouth = 1;
  String color = 'red';

  void voice(); //since the class is abstract the object is not instantiated
}

class Cow extends Animal {
  void voice() {
    print('A cow has $legs legs and $mouth mouth and it says Moooo');
  }
}
