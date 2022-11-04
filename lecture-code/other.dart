class Person {
  String _firstname;
  String _lastname;
  int _age;
  Person(this._firstname, this._lastname, this._age, [String? address]) {
    counter += 1;
  }

  static int counter = 0;
  static printHello() {
    print("hello");
  }

  String get fullname {
    return "$_firstname $_lastname";
  }

  int get age {
    return _age - 10;
  }

  void set age(int val) {
    if (val < 13) throw "Age must be above 13";
    _age = val;
  }

  void setAge(int val) {
    if (val < 13) throw "Age must be above 13";
    _age = val;
  }

  void set fullname(String val) {
    final names = val.split(" ");
    _firstname = names[0];
    _lastname = names[1];
  }

  bool get isOver13 {
    return _age > 13;
  }

  _print() {}
}
