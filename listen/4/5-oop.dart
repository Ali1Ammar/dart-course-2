
// we define a class represnet a complex data
class Person {
  final String name;
  final String phone;
  final bool hasCovid;

  Person(this.name, this.phone, this.hasCovid){ // this is used to pass the parameter value to the defined propeter in the same class
    print("create person");
    // we could write any dart code here , it will run when we create a object from this class
  }
   
  void printIt() {
    print("name $name, phone $phone , is having covid $hasCovid");
  }
}

void main(List<String> args) {
  final x = Person("ali", "+964", true); // create a object,instance from Person class (this process is called initialization )
  x.printIt();
  final a = Person("ali", "+964", true); // create other object
  a.name;
  a.phone;
  print(a.name);
}
