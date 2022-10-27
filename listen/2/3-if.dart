void main(List<String> args) {
  bool boolean_expression = true;
  if (boolean_expression) {
    // statement(s) will execute if the Boolean expression is true.
  } else {
    // statement(s) will execute if the Boolean expression is false.
  }

  if (4 > 2) {
    print("ok");
  }
  var x = 5;
  if (x.isEven) {
    print("ok");
  }

  if (x.isEven) {
    print("true");
  } else {
    print("not true");
  }

  if (x.isEven) {
    print("true");
  } else if (x.isNegative) {
    print("ok");
  } else {
    print("not true");
  }
}
