/*
write a program to create a medical archive for covid to store the following data from the user
name ,phone , has covid before or not
it should support the following case
1- add new person
2- print all data
3- exit
NOTE: you should use a list and map (map inside a list) [{},{}]
 */
/* the final output 
________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
ali
enter phone number:
000
is have covid (yes or no):
yes
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true
________________________
what you want to perform
1- add new person
2- print all data
3- exit
1
enter name:
hassan
enter phone number:
4444
is have covid (yes or no):
no
done entering
________________________
what you want to perform
1- add new person
2- print all data
3- exit
2
__
name is : ali
phone number is : 000
has covid before: true
__
name is : hassan
phone number is : 4444
has covid before: false
________________________
what you want to perform
1- add new person
2- print all data
3- exit
3
 */

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print("""
________________________
what you want to perform
1- add new person
2- print all data
3- exit""");
    final enter = stdin.readLineSync()!;
    if (enter == "3") {
      break;
    } else if (enter == "1") {
      addNew();
    } else if (enter == "2") {
      printData();
    }
  }
}

final data = <Person>[];
printData() {
  for (var element in data) {
    element.printIt();
  }
}

addNew() {
  data.add(Person.createFromInput());
}

class Person {
  final String name;
  final String phoneNumber;
  final bool hasCovidBefore;

  Person(this.name, this.phoneNumber, this.hasCovidBefore);
  factory Person.createFromInput() {
    print("enter name:");
    final name = stdin.readLineSync()!;
    print("enter phone number:");
    final number = stdin.readLineSync()!;
    print("has covid before (Y,N):");
    final hasCovidBefore = stdin.readLineSync()! == "Y";
    return Person(name, number, hasCovidBefore);
  }
  printIt() {
    print("""
__
name: ${name}
phone number: ${phoneNumber}
hac covid before: ${hasCovidBefore}""");
  }
}
