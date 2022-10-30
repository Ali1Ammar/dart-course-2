
void main(List<String> args) {
  printUser(name: "Ali", age: 20, email: "ali@gmail.com", address: "iraq");
}

printUser(
    {required String name,
    required int age,
    String? address = "no address",
    required String email}) {
  // print("name ${name}");
  // print("age ${age}");
  print("""
name: ${name}
age: ${age}
email : ${email}
address : ${address ?? "no address"}
""");
}