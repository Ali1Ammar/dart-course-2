// re solve task 3-3 but use a class to represent the person data
// also make each function in it is own file
/*
write a program to create a medical archive for covid to store the following data from the user
name ,phone , has covid before or not
it should support the following case
1- add new person
2- print all data
3- exit
 */


import 'dart:io';

class Person {
  final String name;
  final String phone;
  final bool hasCovid;

  Person(this.name, this.phone, this.hasCovid);

  @override
  String toString() {
    return """
__
name is : ${name}
phone number is : ${phone}
has covid before: ${hasCovid}""";
  }
}

final archive = <Person>[];

void main(List<String> args) {
  while (true) {
    print("""
________________________
what you want to perform
1- add new person
2- print all data
3- exit""");
    final option = stdin.readLineSync()!;
    if (option == "1") {
      enterNew();
    } else if (option == "2") {
      printAll();
    } else if (option == "3") {
      break;
    }
  }
}

enterNew() {
  print("enter name:");
  final name = stdin.readLineSync();
  print("enter phone number:");
  final phone = stdin.readLineSync();
  print("is have covid (yes or no):");
  final isHasCovid = stdin.readLineSync() == "yes";
  archive.add(Person(name!, phone!, isHasCovid));
  print("done entering");
}

printAll() {
  if (archive.isEmpty) return "no data";
  for (var element in archive) {
    print(element.toString());
  }
}
