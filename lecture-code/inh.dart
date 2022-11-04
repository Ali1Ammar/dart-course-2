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

class Emp extends Person {
  Emp(super.name, super.age, super.birthDay);

  int reciveSalary(int x) {
    print("from emp");
    reciveMoney(1000);
    return 0;
  }
}

class Teacher extends Emp {
  final bool isSpecialTeacher;
  Teacher(super.name, super.age, super.birthDay, this.isSpecialTeacher);

  @override
  int reciveSalary(int x) {
    if (isSpecialTeacher) {
      print("from teacher");
      reciveMoney(2500);
    } else {
      super.reciveSalary(x);
    }
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
  final teacher = Teacher("ali", 30, DateTime(2000, 10, 13), false);
  teacher.reciveSalary(4);
  print(teacher.money);
}
