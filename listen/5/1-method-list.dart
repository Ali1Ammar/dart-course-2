import 'dart:io';

void main(List<String> args) {
  final numb = [5, 2, 3, 1, 4, 3];

  print(numb.reversed.toList());

  numb.forEach((element) {
    // same as for in but work with a function
    print(element);
  });

// this a short syntax to define a one line fucntion that always return a value
  x1() => 5;

  // this code is equal to the above function but in the regular way
  a() {
    return 5;
  }

  final numb2 = numb
      .map((e) => e * 2)
      .toList(); // this will multiple all the number by 2 than return a new list with the new numbers
  final numbStr = numb
      .map((e) => "${e * 2}")
      .toList(); // this will multiple all the number by 2 than return a new list with the new numbers

  final x = numb.map((e) {
    return "$e is number";
  }
      // change type  or math
      ).toList();
  print(x);

  final c = <String>[];
  // 3,4,5
  for (var i = 0; i < 3; i++) {
    c.add(stdin.readLineSync()!);
  }
  final numX = x.map((e) => int.parse(e)).toList();
  print(numX);

  print(numb.where((element) => element.isEven).toList());
  print(numb.firstWhere((element) => element > 5));
  print(numb.lastWhere((element) => element > 5));
  print(numb.every((element) => element > 5));
  print(numb.any((element) => element > 5));
  print(numb.sublist(1, 5));
  print(numb.getRange(1, 5));
  print(numb.join(','));
  final name = "aliammar";
  print(name.split(""));
  print(numb.where((element) => element.isOdd && element > 4).toList());
  print(numb.firstWhere((element) => element.isEven));
  print(numb.sublist(2, 5));
  print(numb.getRange(2, 5));
  final j = numb.join("|");
  print(j);
  print(j.split("|"));

  const string = 'Hello world! Hi';
  final splitted = string.split(' ');

  print(splitted);
  print(splitted.join("|")); // numb.
}
