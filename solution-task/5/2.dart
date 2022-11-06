/* we must solve task 1 before this
create a SumNumbers class 
that take 10 number from the user using BaseInputFromUser class from task 1
and print the sum of this numbers,
then write a main() program to use this class
create the following funciton inside the SumNumbers class to implments this logic
1- input()
use BaseInputFromUser class from task 1 to input the number from user

2- sum()
calculate the resutl and save it inside a private variable,
thorw a exception if we run sum() before taking input from the user

3- printResult()
print the result to the user
thorw a exception if we run print() before calculate the result or input the data



 */

import '../../igonre/task/5/4.dart';

void main(List<String> args) {
  final x = SumNumbers(InputFromUser());
  x.input();
  x.sum();
  x.printRes();
}

class SumNumbers {
  final BaseInputFromUser inputter;
  SumNumbers(this.inputter);
  List<num>? inputs;
  input() {
    inputs = inputter.enterListOfNum(10);
  }

  num? res;
  sum() {
    if (inputs == null) throw "use input first";
    num _sum = 0;
    for (var element in inputs!) {
      _sum += element;
    }
    res = _sum;
  }

  printRes() {
    if (res == null) throw "use sum first";
    print("the result is :$res");
  }
}
