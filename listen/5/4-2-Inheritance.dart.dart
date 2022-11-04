
void main(List<String> args) {
  // final aa = Customer();//error as Customer is abstract class
  final Customer one = Person("ali");
  final Customer two = Enginer("ali");

  Cafe(one, 20);
  Cafe(two, 20);

  Cafe(Person("ali"), 10); // this will print ali
  Cafe(Enginer("mohmmed"), 40); // this will print eng.mohmmed
  Cafe(Doctor("mohmmed"), 40); // this will print Dr.mohmmed
}

class Cafe {
  final Customer person;
  final int price;
  Cafe(this.person, this.price) {
    if (person.isHaveCofeCost(price)) {
      person.pay(price);
      print(person.writeOnCup());
    }
  }
}

abstract class Customer {
  // this abstract class that have a uncomplete code
  int money = 0;
  pay(int pay) {
    money -= pay;
  }

  isHaveCofeCost(int price) {
    return money >= price;
  }

  // this is a uncomplete function , we must write when we extends the class
  String writeOnCup();
}

class Person extends Customer {
  final String name;

  Person(this.name);

  writeOnCup() => name;
}

class Doctor extends Customer {
  final String name;

  Doctor(this.name);

  writeOnCup() => "Dr.$name";
}

class Enginer extends Customer {
  final String name;

  Enginer(this.name);

  writeOnCup() => "eng.$name";
}
