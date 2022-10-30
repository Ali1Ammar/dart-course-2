
import 'dart:io';



void main(List<String> args) {
  final x = ss; // function can be store in variable or be a parameter to other function
  x(); // call the function ss from the variable 
  runIt(ss); // function can be passed as parameter to other function
  // function can be define without name (){}
  // this is called anonymous function
  runIt((){
    print("ok i will");
  });
  var s = (){
    print("ok i will");
  }; // this is also a anonymous function
  s();



  runTheCode((x, y) {
    print("ok ${x + y}");
    return 0;
  });
}

void runIt(void Function() code) {
  code(); // call the function 
}

void runTheCode(int Function(int, int) code) {
  var input = stdin.readLineSync();
  if (input == "run") {
    code(2, 3);
  }
}

void ss() {
  print("ok");
}