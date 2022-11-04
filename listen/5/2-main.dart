
import '2-private.dart';

void main(List<String> args) {
  // this person class is define in 2-private.dart read it before this
  final aa = Person("ali", "hassan");
  // aa._fname ; // can not access as it private (start wiht _)
  print(aa.fullname);// fullname is a getter 
  aa.age="20"; // age is a setter

  // see the code of name getter first
  print(aa.name); // use the getter name (_counter=1) // return this is the name
  print(aa.name); // _counter=2 // return this is the name
  print(aa.name); // _counter=2 // return this is the name
  print(aa.name); // _counter=3 , reutrn empty string
  print(aa.name); // _counter=4 , throw error
}