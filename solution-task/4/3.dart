/*
create a AirPlan class with the following attribute
1- model
2- yearOfMade
4- number of set
5- number of current passenger
5- number of engine
6- gas level (from 0 to 100)

and the follwing method
1- fly //(just print flying)
2- land //(just print landing and remove all Passenger)
3- fullGas(int level) // add the current gas level
4- addPassenger
5- removePassenger
6- isFullGas
7- isFullPassenger
we must also validate if there are empty set before adding a new passenger 
and validate that the gas level is full before flying 

after that write a main dart program to use this object
 */

class AirPlan {
  final String model;
  final int yearOfMade;
  final int set;
  final int engine;
  int currentPassenger = 0;
  int gasLevel = 0;

  AirPlan(this.model, this.yearOfMade, this.set, this.engine);

  fly() {
    if (isFullGas()) {
      print("flying");
    } else {
      throw Exception("can not fly without fulling the gas");
    }
  }

  land() {
    print("landing");
    currentPassenger = 0;
  }

  fullGasLevel(int level) {
    gasLevel += level;
    if (gasLevel > 100) gasLevel = 100;
  }

  addPassenger() {
    if (isFullPassenger()) throw Exception("full");
    currentPassenger += 1;
  }

  removePassenger() {
    if (currentPassenger == 0) throw Exception("no one to remove");
    currentPassenger -= 1;
  }

  bool isFullGas() => gasLevel == 100;
  bool isFullPassenger() => currentPassenger == set;
}


void main(List<String> args) {
  final air = AirPlan("air", 200, 5, 2);
  air.fullGasLevel(100);
  air.addPassenger();
  air.addPassenger();
  air.addPassenger();
  air.addPassenger();
  air.addPassenger();
  air.fly();
  air.land();
  print(air.currentPassenger);
}
