void main(List<String> args) {
  // final aa = Customer();//error as Customer is abstract class
  final Customer one = Person("ali");
  final Customer two = Enginer("ali");
  final Customer three = Doctor("ali");
  Cafe(one, 5);
  Cafe(two, 5);

  Cafe(Person("ali"), 10); // this will print ali
  Cafe(Enginer("mohmmed"), 40); // this will print eng.mohmmed
  Cafe(Doctor("mohmmed"), 40); // this will print Dr.mohmmed
  Cafe(Teacher("mohmmed"), 40); // this will print Dr.mohmmed
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
  int money = 2000;
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

class Teacher extends Customer {
  final String name;

  Teacher(this.name);

  writeOnCup() => "teacher.$name";
}
