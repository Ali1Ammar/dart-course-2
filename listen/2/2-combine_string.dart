
import 'dart:io';

void main(List<String> args) {
  // we could combine string using +
  print("hello" + "ali");
  var x = "hi";
  print(x+"ali");
  //NOTE: only + work with string , -/* not working

  // above is a bad way to combine string
  // the better is using $ with var name
  var name = "ali";
  var msg = "hello";
  print("$name $msg"); 
  print("ok fine what about $name what, $msg");

  // or we could also write any expression with ${expression}
  print("the result of 4+2 is ${4+2}");
  var n1= 5;
  var n2=2;
  print("the result of $n1 + $n2 is ${n1+n2}");
  // we could write any dart expression inside ${}
  print("your name is ${stdin.readLineSync()!}");
}