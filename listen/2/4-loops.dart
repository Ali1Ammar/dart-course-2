void main(List<String> args) {
  // for (statement;Boolean expression; statement) {
  // you code here
  // }

  // for (counter; start condition; change counter) {
  // you code here
  // }
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  for (var i = 0; i < 10; i += 2) {
    print(i);
  }

  for (var i = 100; i.isNegative; i -= 3) {
    print(i);
  }

  // while (condition) {
  // your code here
  // }
  int i = 10;
  while (i != 0) {
    i--;
    print(i);
  }

  var list = [5, 4, 2, 6, 7];
  for (var element in list) {
    print(list);
  }

}
