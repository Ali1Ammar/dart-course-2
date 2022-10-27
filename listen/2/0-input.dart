// NOTE:we must put this the below line at the start of the file when we need to use stdin.readLineSync()
import 'dart:io';

// take input from user
void main(List<String> args) {
  // take string
  var name = stdin
      .readLineSync(); // string now is nullable String? (can be string or null)
  var name2 = stdin
      .readLineSync(); // string now is non nullable String (can not be null)

  // stdin.readLineSync() is always return a string
  // if we want to take a int,double,num we must convert it our self
  var ageString = stdin.readLineSync()!; // this is string
  var ageNum = int.parse(
      ageString); // we use  int.parse to convert it into int  (same apply for num.parse double.parse)
  var age = int.parse(
      stdin.readLineSync()!); // we also could combine in into one line

  // if we need a number we may use if statement to convert it
  var isOk = stdin.readLineSync() == "true";

  // as we will take in next lesson any function call is expression so we could do something like
  var list = [
    stdin.readLineSync(),
    stdin.readLineSync(),
    stdin.readLineSync()
  ]; // this will take 3 value from user and add it into the list directly

  // it is better to print a message to the user before run stdin.readLineSync()
  print("enter your name please ");
  var yourName = stdin.readLineSync();
}
