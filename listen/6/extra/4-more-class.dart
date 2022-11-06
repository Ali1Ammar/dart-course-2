import 'dart:io';

void main(List<String> args) {
  // final point = Point(5, 3);
  // final x= point.printMe() ;
  // print(x);
  // final point2 = Point(5, 3)..printMe();
  // Point.same(2);
  // Point.zero().printMe();
  // Point.same(6).printMe();

  // Point.alsoZeros().printMe();
  // // Point.
  // Point.fromString("3", "10").printMe();
  // Point.fromJson({"x": 5, "y": 10}).printMe();
// Point.a;
// Point.
  final x = SpecialPoint(4, 10)..printMe();
  x.x=3;

  // x.
  // SpecialPoint.a
  // x.
}

class Point {
   int x=0;
  final int y;
  static int a = 0;
  Point(this.x, this.y){
    x;
  }
  Point.same(int point)
      : x = point,
        y = point;
  Point.zero()
      : x = 0,
        y = 0;

  factory Point.alsoZeros() {
    final class2 = Point(3, 1);
    print('aaa');
    return class2;
  }

  factory Point.fromString(String p1, String p2) {
    return Point(int.parse(p1), int.parse(p2));
  }

  factory Point.fromJson(Map<String, dynamic> json) {
    var x = json["x"]! as int;
    var y = json["y"]! as int;
    return Point(x, y);
  }
  
  void printMe() {
    print("Point($x,$y)");
  }
}

// super
class SpecialPoint extends Point {
  SpecialPoint(super.x, super.y);
  @override
  printMe() {
   if(x.isEven) super.printMe();
    print("I am special");
    
  }

  aaa (){
    super.printMe();
  }
}

// no super
class SpecialPoint2 implements Point {
  // int x;
  int x=0;
  // int get x=>0;
  // void set x(int val){}
  int y;
  SpecialPoint2(this.y);
  @override
  printMe() {
    print("I am special");
    // super.printMe();
  }
}


// class TODO {
//   final int userId;
//   final int id;
//   final String title;
//   final bool complented;

//   TODO(this.userId, this.id, this.title, this.complented);

//   factory TODO.fromJson(Map<String, dynamic> json) => {TODO(json["userId",])};

// }