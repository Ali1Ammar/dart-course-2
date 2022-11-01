import '1-error.dart';
import 'dart:io';

void main(List<String> args) {
  int x = 5; // can has integer only
  // x= "gg" ; // error
  dynamic y = "4"; // can has every value and null
  y = 4;
  y = true;
  y = null;
  y.isEven; // can call any things without compile time error ( but runtime error may happens)

  Object a = "d"; // can has every value except null
  a = 3;
  a = true;
  // a=null; error we must use Object?
  // a.isEven; // we can not use any method or getter on it

  (a as int).isEven; // if we use 'as' keyword,
  //we can convert its type(not value) into int ,
  //and use any int method but if it is not a integer we will get a runtime error

  // we should always try to get away from runtime error and prefer a compile time error
  // so we should not use 'as' or dynamic as much as we can

  // if we do not know the value of a variable we may use Object with if and is
  Object unKnownValue = "";
  if (unKnownValue is int) {
    print(unKnownValue + 5);
    unKnownValue.isEven; // see this here we could use any int method
  } else if (unKnownValue is String) {
    print(int.parse(unKnownValue) + 5);
  } else if (unKnownValue is bool) {
    print(unKnownValue ? 1 : 1);
  } else {
    print("we do not support this type of now");
  }
}
