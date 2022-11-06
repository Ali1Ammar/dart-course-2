import '../1.dart';

void main(List<String> args) {
  // generic type;
  // strong type
  // week type 
  // List<int> list = ["ali","hi","ok"]; // generic type <String>

  // list.indexOf(element);
  // list.insert(3, 3);
  // final x = Cache<int, String>(0);
  // x.save("key", 3);
  // final a = x.getData("key");
  // print(a);
  // final xx = Cache<int, num>("defualt");
  // xx.save(4, "hello");
  // final a2 = xx.getData(7);
  // print(a2);
  // final x = ["ali", if(list.length==2) ...list , "hi"];
  // print(x);
  // final  c = {"name": "ali"};
  // final c2 = {...c, "age": 12};
  var cache = Cache(4);
  // cache.save("name", "dd");
  var cache2 = Cache<int>(5);
  // cache2.save("name", "cache3");

  print(getCacheFromXOrY(cache, cache2));
  // print(workHereToo<String>("ali", "aaa"));
}

// T? workHereToo<T>(T x, T y) {
//   if (x == y) return null;
//   return x;
// }

T? getCacheFromXOrY<T>(Cache<T> x, Cache<T> y) {
  return x.getNullable("name") ?? y.getNullable("name");
}

// class Cache<ValueType , KeyType> {
//   final ValueType defualt;
//   final _map = <KeyType, ValueType>{};
//   Cache(this.defualt);

//   void save(KeyType key, ValueType value) {
//     _map[key] = value;
//   }

//   ValueType getData(KeyType key) {
//     return _map[key] ?? defualt;
//   }
// }

class Cache<T> {
  Cache(this.defualt);

  final T defualt;

  final _cache = <String, T>{};

  void save(String key, T x) {
    _cache[key] = x;
  }

  T? getNullable(String key) {
    return _cache[key];
  }

  T get(String key) => getNullable(key) ?? defualt;
}
