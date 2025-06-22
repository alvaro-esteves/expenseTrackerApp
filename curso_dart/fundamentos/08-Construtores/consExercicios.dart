/*Create a class Car with the following properties:

String make
String model
int year
Add a constructor that initializes these properties. Then, create an instance of Car and print its properties.*/

void main() {
  Car car = Car('BMW', 'z8', 2020);
  print(car);
  //print('make: ${car.make}, model: ${car.model}, year: ${car.year}');

  Book book = Book(title: 'Harry Potter and the Azkaban prisoner', author: 'J.K. Rowling', pages: 565);
  print(book);
}

class Car {
  String? make;
  String? model;
  int? year;

  Car(this.make, this.model, this.year) {
    print('make: $make, model: $model, year: $year');
  }
}
/*Exercise 2: Named Parameters Constructor
Create a class Book with the following properties:

String title
String author
int pages
Add a constructor that initializes these properties using named parameters. Create an instance of Book and print its properties.*/

class Book {
  String? title;
  String? author;
  int? pages;

  Book({required this.title, required this.author, required this.pages}) {
    //required prevents it to be null

    print('Book title: $title, Author name: $author, Number of pages: $pages');
  }
}
