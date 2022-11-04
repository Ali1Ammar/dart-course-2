import 'dart:io';

enum Player { x, o }

final board = <Player?>[
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
];

printBoard() {
  for (var i = 0; i < board.length; i += 3) {
    print(
        "${printBoardItem(0 + i)} ${printBoardItem(1 + i)} ${printBoardItem(2 + i)}");
  }
}

String printBoardItem(int i) {
  final item = board[i];
  if (item == null) {
    return "$i";
  }
  return item.name;
}

void main(List<String> args) {
  Player? winner;
  Player currentPlayer = Player.o;
  for (int i = 0; i < 9; i++) {
    printBoard();
    final entered = enterNumber();
    board[entered] = currentPlayer;
    currentPlayer = currentPlayer == Player.o ? Player.x : Player.o;
    winner = checkWinner();
    if (winner != null) {
      print("the winnner is ${winner.name}");
      break;
    }
  }
  if (winner == null) {
    print("there is no winner");
  }
}

int enterNumber() {
  print("enter number from above board");
  while (true) {
    final strNumber = stdin.readLineSync()!;
    final number = int.parse(strNumber);
    if (number < 9 && board[number] == null) {
      return number;
    }
    print("please enter empty and vaild number (0-8)");
  }
}

Player? checkWinner() {
  const winningCase = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  for (var element in winningCase) {
    final firstValue = board[element[0]];
    final secondValue = board[element[1]];
    final thirdValue = board[element[2]];
    if (firstValue != null &&
        firstValue == secondValue &&
        secondValue == thirdValue) {
      return firstValue;
    }
  }
  return null;
}
