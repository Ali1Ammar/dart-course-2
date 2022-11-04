
void main(List<String> args) {
  final cofe =   Cafe();
  // cofe._counter; // error as we can not access static by the object
  Cafe._counter; // work as we acccess the static by the class name
    // static 
  Cafe.incCounter();  // static function
  Cafe();
  Cafe();
  print(Cafe._counter); 
  // see that when run the code code it will print 4 because the static variable is shared between all not like a regualr variable inside class that is has diffrent value in each object create
}

class Cafe {
  static int _counter = 0; // static variable means it shared and global and any one can access , it like a global variable , it keet its value and do not change for each object
  int regularCounter=0;

  Cafe() {
    _counter++;// _counter a static variable , when we create new object
    regularCounter++;
  }

  static incCounter() {
    _counter++;
    // regularCounter++; // error as we can not access regualr function/variable inside a static function
  }
}