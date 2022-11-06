import 'dart:io';

/*
write a program to enter 3 number into a list and print the list  then print the following case
number 1 is bigger than 2 : false
number 2 is bigger than 3 : true
number 3 is equal number 1 : false

the fianl output should be like this :

1
5
3
[1, 5, 3]
number 1 is bigger than 2 : false
number 2 is bigger than 3 : true
number 3 is equal number 1 : false

 */
void main() {
  print("enter three number");
  final list = [
    int.parse(stdin.readLineSync()!),
    int.parse(stdin.readLineSync()!),
    int.parse(stdin.readLineSync()!),
  ];
  print(list);
  print("number 1 is bigger than 2 : ${list[0] > list[1]}");
  print("number 2 is bigger than 3 : ${list[1] > list[2]}");
  print("number 3 is equal number 1 : ${list[2] == list[0]}");
}
