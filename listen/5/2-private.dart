// the main is written in 2-main.dart
class Person {
  // any things start with _ means private and can not be access from other file 
  String _fname;
  String _lname;
  int _age = 18;
  int _counter = 0;
  Person(this._fname,this._lname);

  void set age(String value){ // this is a setter
    // we use set to do any logic on the data before save it
    final x = int.parse(value);  // like change it is type
    if(x>=18) _age=x; // or validate the data 
    else {
    throw "not correct age";
    }
  } 
  String get fullname => "$_fname $_lname"; // this is a getter we use it to expose data to the user
  String get age => (_age*2).toString();
   

  String get name { // we could do any dart code inside setter and fetter 
    _counter++;
    if(_counter==4) throw Exception("error here");
    if(_counter>2) return "";
    return "this is the name $_fname";
  }
}
