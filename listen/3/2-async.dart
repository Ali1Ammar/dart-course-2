// async await

void main(List<String> args) async {
  // final a = await getNameFromServer("a@gmail.com");
  // final b = await getNameFromServer("b@gmail.com");
  final x = await Future.wait([
    getNameFromServer("a@gmail.com", 2),
    getNameFromServer("b@gmail.com", 4),
    getNameFromServer("c@gmail.com", 6)
  ]);
  print(x);
}

Future<String> getNameFromServer(String email, int delay) async {
  print("start $email");

  await Future.delayed(Duration(seconds: delay));
  print("end $email");

  return email;
}
