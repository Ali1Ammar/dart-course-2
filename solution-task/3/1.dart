/*
complete  numberOfOne function below to make it calc the number of ones in the binary form of the value number
use the below convertToBinary function to convert the number into binary
NOTE: do not change any things inside main or convertToBinary function
only write your code inside numberOfOne


convertToBinary(5) => 101
numberOfOne(5) => 2


convertToBinary(12) => 1100
numberOfOne(12) => 2


convertToBinary(19) => 10011
numberOfOne(19) => 3


 */

int numberOfOne(int value) {
  // write your code here
  int numOfOne = 0; // 3
  //2
  // 2 => 10
  // 5 => 101
  // 1 => 0
  final bin = convertToBinary(value); // 1100100
  print(bin);
  for (var i = 0; i < bin.length; i++) {
    if (bin[i] == "1") {
      numOfOne++;
    }
  }

  return numOfOne;
}

void main(List<String> args) {
  print(numberOfOne(100));
  // print(numberOfOne(12));
  // print(numberOfOne(19));
}

String convertToBinary(int val) {
  return val.toRadixString(2);
}
