// data structure is the way we organize data in memory
// in dart we have three type (list,map,set)
// we should know the benefit of each and where is better to use it and where we should avoid it

import 'dart:collection';

void fff() {
  // list (array)
  var x = ["ok", "hi", "what"];
  x[1] = "fine"; // access by the index is fast
  x.elementAt(0); // access by the index is fast
  x.indexOf("who"); // access by the value is slower
  x.contains("ok"); // access by the value is slower
  x.add("add"); // add a new value to the list
  x.remove("ok"); // remove a value (slower as it use value not index)
  x.removeAt(3); // remove a value (faster as it use index not value)
  x.clear(); // remove all element




  // map (hash-map,hash-table)
  // used to index a value by a key
  // so we give a key and get the value directly
  // it may also used to represent a complex data like the data below
  var person = {"name": "ali", "age": 10, "email": "ali@g.com"};
  person["name"]; // access by key as fast
  person.containsKey("name"); // access by key as fast
  person.containsValue("ali"); // access by value as slow
  person.remove("age"); // remove a key and its value
  person["phone"] = "1234"; // add a key and value
  // map may work with for-in but with either person.entries,person.keys,person.values
  for (var element in person.entries) {
    print(element.key);
    print(element.value);
  }
  for (var key in person.keys) {
    print(key);
  }
  for (var value in person.values) {
    print(value);
  }




  // set (hash-set)
  // it only has value no index or key
  var set = {3, 4, 6, 7};
  set.contains(3); // fast
  set.remove(5); // fast
  // set[4]; // we can not access a value by it is index(order)
  set.elementAt(3); // this is a slow as we do not have index so it will need 3 step to perform 
  // it remove the duplicated data automatically
  set.add(3); // no things will be added as we already has 3 in our list
  set.toList(); // we can convert it to list
  x.toSet(); // we can also convert a list into set
  // it work with for-in too
  for (var element in set) {

  }
}

void main(List<String> args) {

  // // list (array)
  // var x = [3, 2, 1,2 ,];
  // x[3];
  // print(x);
  // print({2, 5,3,2,1,print});
  // final set = {2, 5,3,2,1};
  // set.contains();
  // set[1];
  // print({2:"ali",10:"aa", "key":"ss",true:3 , print:3 });
  // x[0] = 3;
  // x[1];
  // x.removeAt(2);
  // final s = x.elementAt(2);
  // final s2 = x[2];

  // final x = List.generate(100000, (index) => "ss $index") ;
  // for (var i = 0; i < 10000; i++) {
  //   x.contains("sss");
  // }

  // x.remove(3);
  // print(x.contains(30));
  // print(x.indexOf(2));

  // x.add(7);

  // x.addAll([4, 3, 1]);
  // x.clear();

  // print(x);
  // map (hashmap , hashtable)
  // final map = {"name": "ali", "age": 18};

  // map["job"] = "enginner";
  // print(map["job"]);
}
