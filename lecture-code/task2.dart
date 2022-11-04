/*
write a dart program for a student attendance for a school class  
it should have 4 functionally
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
NOTE:create function for each case above and do not put all code in the main function
4- exit from the program
NOTE: print a msg to user if he try to print the student and there is no one in the class
NOTE: there is no need for now to handle the case for having duplicate name
 */

/*  the output of execute the program is :
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
1
enter the name of new student
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
3
the names student in the class now:
ali
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2  
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
2
enter the name of student to remove
ali
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
3
no student exist
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
4
 */

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print("""
what you want to do ? (enter 1 or 2 or 3 or 4)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
""");
    final userEnter = stdin.readLineSync()!;
    if (userEnter == "4") {
      break;
    } else if (userEnter == "1") {
      enterUser();
    } else if (userEnter == "2") {
      leave();
    } else if (userEnter == "3") {
      printUser();
    } else {
      print("please enter from above list");
    }
  }
}

final students = <String>[];

enterUser() {
  print("enter user name:");
  final userEnter = stdin.readLineSync()!;
  students.add(userEnter);
}

leave() {
  print("enter user name:");
  final userEnter = stdin.readLineSync()!;
  students.remove(userEnter);
}

printUser() {
  students.forEach(print);
  // for (var element in students) {
  //   print(element);
  // }
}
