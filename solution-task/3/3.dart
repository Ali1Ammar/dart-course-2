import 'dart:io';

final archive = <Map>[];

void main(List<String> args) {
  while (true) {
    print("""
________________________
what you want to perform
1- add new person
2- print all data
3- exit""");
    final option = stdin.readLineSync()!;
    if (option == "1") {
      enterNew();
    } else if (option == "2") {
      printAll();
    } else if (option == "3") {
      break;
    }
  }
}

enterNew() {
  print("enter name:");
  final name = stdin.readLineSync();
  print("enter phone number:");
  final phone = stdin.readLineSync();
  print("is have covid (yes or no):");
  final isHasCovid = stdin.readLineSync() == "yes";
  archive.add({"name": name, "phone": phone, "isHasCovid": isHasCovid});
  print("done entering");
}

printAll() {
  if (archive.isEmpty) return "no data";
  for (var element in archive) {
    print("""
__
name is : ${element["name"]}
phone number is : ${element["phone"]}
has covid before: ${element["isHasCovid"]}""");
  }
}
