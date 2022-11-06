
import 'dart:io';

final studentName = [];

void main(List<String> args) {
  while (true) {
    print("""
_________________________________________
what you want to do ? (enter 1 or 2 or 3)
1- enter a student to the class
2- leave a student from the class
3- print all student at the class
4- exit
""");
    final option = stdin.readLineSync()!;
    if (option == "1") {
      handleEnter();
    } else if (option == "2") {
      handleLeave();
    } else if (option == "3") {
      handlePrint();
    } else if (option == "4") {
      break;
    }
  }
}

handleEnter() {
  print("enter the name of new student");
  final name = stdin.readLineSync()!;
  studentName.add(name);
}

handleLeave() {
  print("enter the name of student to remove");
  final name = stdin.readLineSync()!;
  studentName.remove(name);
}

handlePrint() {
  if(studentName.isEmpty){
    print("no student exist");
    return;
  }
  print("the names student in the class now:");
  for (final element in studentName) {
    print(element);
  }
}
