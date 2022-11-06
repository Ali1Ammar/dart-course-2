/* we must solve task 4 before this 
create a SumNumbers class 
that take 10 number from the user using BaseInputFromUser class from task 1
and print the sum of this numbers,
then write a main() program to use this class
create the following funciton inside the SumNumbers class to implments this logic
1- input()
use BaseInputFromUser class from task 4 to input the number from user
2- sum()
calculate the resutl and save it inside a private variable,
thorw a exception if we run sum() before taking input from the user
3- printResult()
print the result to the user
thorw a exception if we run print() before calculate the result or input the data
 */

import 'input.dart';

class SumNumbers {
  final BaseInputFromUser inputFromUser;

  SumNumbers(this.inputFromUser);
  List<num>? values;
  void input() {
    values = inputFromUser.enterListOfNum(10);
  }

  num? sumNumber;
  sum() {
    if (values == null) {
      throw "Please use input first";
    }
    num sum = 0;
    for (var element in values!) {
      sum += element;
    }
    sumNumber = sum;
  }

  printResult() {
    if (sumNumber == null) {
      throw "Please use sum first";
    }
    print("the sum number is ${sumNumber}");
  }
}

void main(List<String> args) {
  final sumNumbers = SumNumbers(InputFromUser());
  sumNumbers.input();
  sumNumbers.sum();
  sumNumbers.printResult();
}
