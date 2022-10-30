void main(List<String> args) {
  // there are two main type of error
  // compile time error
  // the code can not run without fixing it
  // String x = 5; // compile time error as x is string ans we try to use number
  // x.isEven; // compile time error as x is string and does not have isEven

  // runtime error (happens as we running the code , as the user use the program)
  int x = 1 ~/ 0; // like divide by zero

  final a = [1, 2];
  print(a[5]); // runtime error as we try to access no exist element
  print(x);
  // we use try catch statement to handle the error
  try {
    // try to perform the following code
    int x = 1 ~/ 0; // here error
    print(x); // this will not execute
  } catch (e) {
    // when any error happens it will start execute the catch part
    print("there error $e");
  }
  // then it will complete the program
  print("done");
}
