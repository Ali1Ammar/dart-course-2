/*
write a program to let the user perform a the below algorithm 
1- find max number
2- search for a string
3- number of box in a given shape
use a interface to represent a Algorithm with this step/function
1- detals of algorithm
2- enter input
3- run the algorithm
create another class to run the Algorithm
*/

import '../task/input.dart';

abstract class Algorithm {
  BaseInputFromUser get inputFromUser;
  String details();
  void input();
  dynamic run() {}
}
