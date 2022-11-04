// get set

import 'other.dart';

void main(List<String> args) {
  final person1 = Person("mohammed", "ali", 20, "adax");
  Person("mohammed", "ali", 20, "adax");
  Person("mohammed", "ali", 20, "adax");
  Person("mohammed", "ali", 20, "adax");
  Person("mohammed", "ali", 20, "adax");
  // Person.counter += 50;
  print(Person.counter);
  Person.printHello();
  // print(person1.counter);
  print(person1.fullname);
  person1.fullname = "ali ammar";
  print(person1.fullname);
  person1.age = 25;
  person1.setAge(25);
  print(person1.age);
  // person1.lastname = "ammar";
  // print(person1.fullname);
  // print(person1.isOver13);
}
