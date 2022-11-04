

void main(List<String> args) {
// named constructor
  final x = Person.named( money:   900);
  print(x.name);

  
  final Person ali = Emp(800,); // Emp is a class that implement person  , so we could save it inside a person variable
  ali.pay(30);
  ali.pay(8);
  ali.reciveMoney(10);
  print(ali.money);


  final ok= Emp(800,); 
  final a = Cafe( ali);// cofe need person and we give it a person
  final b = Cafe( ok ); // or we could also give it any class that extends or implements a person class like Emp

  // static 
  Cafe.incCounter();  // static function
  print(Cafe._counter); // static variable

}

class Cafe {
  static int _counter = 0; // static variable means it shared and global and any one can access , it like a global variable , it keet its value and do not change for each object

  final Person person;

  Cafe(this.person) {
    _counter++;// _counter a static variable , when we create new object
  }
  ff() {
    person.age;
  }

  static incCounter() {
    _counter++;
  }
}

 class Person {
  final String name;
  final int age;
  double money;

  Person(this.name, this.age, this.money);// this is a defualt constructor
  Person.named({this.name="ali", this.age=20, this.money=800}){ // this a named constructor
    print("create person named");
  }

  int getSalary(){
    return 0;
  }

  reciveMoney(int m) {
    money += m;
  }
  /// this is a function for pay
  pay(int m) {
    money -= m;
  }
}

class Emp implements Person {
  //we implements person , 
  //that mean we must provide all the function and proprty fo Person inside Emp class , 
  //and we must write its code from zero
  final int salay;
  double money = 10;
  int  age = 10;
  String  name ="ali";

  Emp(this.salay) {
    print("emp main");
  }
  int getSalary() {
    return salay;
  }
  pay(int x) { // we must provide all function with the same name,type,parameter, return type , but we could change the code 
    money += x;
  }
  reciveMoney(int m) {
    money += m * 2;
  }
  receiveSalary() {
    reciveMoney(salay);
  }
}
