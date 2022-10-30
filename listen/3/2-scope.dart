// this is a global scope 
// any function can see this variable and use
String x = "hello";
int num = 1;

void main(List<String> args) {
  // this is a local scope 
  // any variable defined here only main function can see it
  var x= 5;
}



int sum(int x, int y) {
  // the x parameter here is different from x in the main 
  return x + y;
}

int y = 10;
sum2(int x, int y) {
  // the x parameter here is different from the above at main,sum,global
  int y = 5;
  return x + y;
  // we could have the same name for parameter and local variable and global variable
  // when we try to use it , it will give as the the closest
  // we can not have same name with the same kind(parameter, local variable, global variable) twice
  // int a=5;
  // int a=5;
}