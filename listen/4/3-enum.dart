import '1-error.dart';
import '2-type.dart';

// Enumerated types, often called enumerations or enums,
// are a special kind of class used to represent a fixed number of constant values.

// we use enum when we have a fixed case to represent like below
enum Player { x, o }

enum Material { math, arabic, english }

enum StateOfPage { loading, loaded, error }

enum Color { red, green, blue }

void main(List<String> args) {
  Color color = Color.green; // used as a type

  print(color); // will print Color.green
  print(color.name); // will print green

  print(Material.values); // print all enum value as array

  final player = Player.values.byName("x"); // convert string into enum
  print(player.name);

  if (player == Player.o) {
    print("the winner is o");
  } else if (player == Player.x) {
    print("the winner is x");
  }

  // we may use a switch case with enum to check it is value 
  switch (player) {
    case Player.x:
      print("the winner is x");
      break;
    case Player.o:
      print("the winner is o");
      break;
  }
}
