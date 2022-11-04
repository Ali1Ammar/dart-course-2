
void main(List<String> args) {
  final ali = Emp(200, "ali", 21, 900);
  ali.money; // we can access any things from person and emp class
  ali.receiveSalary();
  ali.pay(20);
  print(ali is Emp); // true
  print(ali is Person); // true
  Person hassan = Emp(200, "hassan", 21, 900); // we can save a emp inside a person variable or any other expresion that take person
  hassan.money; // we can access person property
  // hassan.receiveSalary(); we can not acees Emp property as we define it as Person
}


 class Person {
  final String name;
  final int age;
  double money;

  Person(this.name, this.age, this.money){
    print("main person");
  }
  reciveMoney(int m) {
    money += m;
  }
  /// this is a function for pay
  pay(int m) {
    money -= m;
  }
}

class Emp extends Person {
  // extends means we extend the person class and add a proprty and method into it
  // that means any person proprty and method will be access inside Emp
  final int salay;


  Emp(this.salay,super.name,super.age,super.money){ // we use super. to pass a value into the Person class
    print("main emp");
  }

  int getSalary() {
    return salay;
  }

  pay(int x) {
    money += x; // see that we can access proprty from person (money)
  }

  receiveSalary() {
    reciveMoney(salay);// see that we can access a function from person class
  }
}
