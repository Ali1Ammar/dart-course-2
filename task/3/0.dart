/*
this is a a solved task
read it before start solving task 2 and 3
there are also a video for a complex version of this task 
https://www.youtube.com/watch?v=wCHPlhnRvPQ&list=PLZ1Wx4C_TFw9iXeFJh1_ri2Cj9wADt1wf&index=22


write a dart program that let a user enter a number value then support the following case
1:let user now if the number is even or odd
2:let user now if the is negative or positive
3:let user exit
 */

/* the output of this may look like
Enter Number Please
2
what you need to know about 2
1:is even or odd
2:is negative or positive
3:to exit
1
2 is even
Enter Number Please
5
what you need to know about 5
1:is even or odd
2:is negative or positive
3:to exit
2
5 is positive
Enter Number Please
5
what you need to know about 5
1:is even or odd
2:is negative or positive
3:to exit
3
 */

import 'dart:io';

void main(List<String> args) {
  while (true) {
    print("Enter Number Please");
    final numStr = stdin.readLineSync()!;
    final num = int.parse(numStr);

    print("what you need to know about $num");
    print("1:is even or odd");
    print("2:is negative or positive");
    print("3:to exit");
    final option = stdin.readLineSync()!;
    if (option == "3") {
      break; // exit
    } else if (option == "1") {
      handleIsEven(num);
    } else if (option == "2") {
      handlePositive(num);
    } else {
      // validate the input
      print("please Enter only 1 2 3 4");
      continue;
    }
  }
}

void handlePositive(int num) {
  if (num > -1) {
    print("$num is positive");
  } else {
    print("$num is negative");
  }
}

void handleIsEven(int num) {
  if (num % 2 == 0) {
    print("$num is even");
  } else {
    print("$num is odd");
  }
}
