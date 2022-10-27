// statement in programming is any line of code
// where a expression is any specie of code that have a value (or return a value)

// ignore_for_file: unused_local_variable

// the below is from dart.dev website
/*
    Dart has both expressions (which have runtime values) and statements (which don’t).
    For example, the conditional expression condition ? expr1 : expr2 has a value of expr1 or expr2. 
    Compare that to an if-else statement, which has no value.
    A statement often contains one or more expressions, 
    but an expression can’t directly contain a statement. 
   */

/* source : https://www.anycodings.com/1questions/2909851/difference-between-an-expression-and-statement-in-dart
An expression has a value at runtime. (below is a example of expression)

    42
    true
    hello
    1 + 1
    x
    myObject
    myInt + 1
    k++
    p > 0
    condition ? expr1 : expr2
    'hello'.toUpperCase()
    myObject.toString()
    myObject.someMethod()
    myObject?.someProperty?.someMethod()
    myString.isEmpty
    [1, 2, 3]
    [...list1]
    <String, String>{...a, ...b}

    A statement does something and in itself doesn't have a value at runtime.  Statements are not expressions, but they can contain expressions.

    myInt = 1;
    print('hello');
    return null;
    if (name != null) { return name; } else { return 'Guest'; }
    for (var i = 0; i < 5; i++) { message.write('!'); }
    break;
    while (!isDone()) { doSomething(); }
    yield k++;
    assert(text != null);
    throw FormatException('Expected at least 1 section');
    void distanceTo(Point other) => throw UnimplementedError();
     */

import 'dart:io';

void main(List<String> args) {
  // statement in programming is any line of code
  // where a expression is any specie of code that have a value (or return a value)
  // statement may have multi expression in it
  var x =
      5; // here 5 is expression as it have value , but the full line from var to ; is statement as it do somethings
  x; // x here alone is expression as it have a value store at the memory , the full line with ; is statement
  var y = x; // same thins here x is expression and the full line is statement
  var g = 5 +
      2; // here 5 is expression , 2 is expression also , and the result of 5+2 is also a expression
  var d = g +
      y +
      2; // here g,y,2 is expression , and the result of the + is also expression

  // calling any function is a expression (as it return a value)
  var name = stdin
      .readLineSync(); // calling the readLineSync() function here is also returning a value so it is expression
  var ok = print("hello");
  // there are place where only take a expression
  // like when we call a function we may provide it with a expression
  print(x); // here x is expression
  // define a variable as also need a expression
  var age = 12; // here after the = we must provide a expression
}
