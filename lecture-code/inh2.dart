// - Inheritance الوراثة ( ,mixin,imp)
// teacher , student , emp , parent
// person

class Person {
  final String name;
  final int age;
  final DateTime birthDay;
  double money = 0;

  Person(this.name, this.age, this.birthDay);

  pay(double price) {
    if (price > money) {
      throw "you dont have money";
    }
    money -= price;
  }

  reciveMoney(double m) {
    money += m;
  }
}

abstract class Emp extends Person {
  Emp(super.name, super.age, super.birthDay);

  int reciveSalary(int x);
}

class Teacher extends Emp {
  final bool isSpecialTeacher;
  Teacher(super.name, super.age, super.birthDay, this.isSpecialTeacher);

  @override
  int reciveSalary(int x) {
    print("from teacher");
    reciveMoney(2500);

    return 0;
  }
}

class Manger extends Emp {
  Manger(super.name, super.age, super.birthDay);

  @override
  int reciveSalary(int x) {
    reciveMoney(5000);
    return 0;
  }
}

class Student extends Person {
  final int classe;
  final int grade;
  Student(super.name, super.age, super.birthDay, this.classe, this.grade);
}

void main(List<String> args) {
  // Person emp1 = Emp("ali", 30, DateTime(2000, 10, 13));
  // emp1 = Person("ali", 30, DateTime(2000, 10, 13));
  // emp1 = Student("ali", 30, DateTime(2000, 10, 13), 12, 1);
  // if (emp1 is Emp) {
  //   emp1.reciveSalary();
  //   emp1.reciveSalary();
  // }

  // emp1.reciveMoney(400);
  // print(emp1.money);
  final teacher = Manger("ali", 30, DateTime(2000, 10, 13));
  teacher.reciveSalary(4);
  print(teacher.money);
}
