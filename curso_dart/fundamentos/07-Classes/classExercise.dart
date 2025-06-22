/*Exercise 1: Creating a Simple Class
Objective:** Create a basic class with properties and methods. dart
Define a class called `Person` with properties `name` and `age`.
Add a method `greet` that prints a greeting message including the person's name.*/

/*void main() {
  Person person2 = Person();
  person2.greet();
}

class Person {
  String name = 'Lucas';
  int age = 30;

  void greet() {
    print('Hey Im $name and Im $age');
  }
}
//ANOTHER WAY

class Person {
  String name;
  int age;

  Person(this.name, this.age);
  Person.withoutAge(this.name) : age = 0;

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

class Employee{
  String jobtitle;

  Employee(this.jobtitle);
  
}

// Create an instance of `Person` and call the `greet` method.
void main() {
  var person = Person('Alice', 25);
  person.greet();

  var personage = Person.withoutAge('Bob');
  personage.greet();
}
*/

/*class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

class Employee extends Person {
  String jobTitle;

  Employee(String name, int age, this.jobTitle) : super(name, age);

  void work() {
    print('$name is working as a $jobTitle.');
  }
}

// Create an instance of `Employee` and call the `greet` and `work` methods.
void main() {
  var employee = Employee('Alice', 25, 'Software Engineer');
  employee.greet();
  employee.work();
}*/

//TRYOUTS
void main() {
  var person = Person();
  person.name = 'Alvaro';
  person.age = 26;
  person.greet();
  person.noAge();

  var employee = Employee();
  employee.name = 'Alvaro';
  employee.age = 26;
  employee.jobTitle = 'Software engineer';
  employee.work();
}

class Person {
  String? name;
  int age = 0;

  greet() {
    print('Hello my name is $name and I am $age years old');
  }

  noAge() {
    print('Hello my name is $name and I am ${age = 0} years old');
  }
}

class Employee extends Person {
  String? jobTitle;

  work() {
    print('$name is $age years old and he is a $jobTitle');
  }
}
