//import 'dart:core';

void main() {
  var name = "Amit";
  var n = 'A';
  print(name.runtimeType);
  print(n.runtimeType);
  double e = 90.20;
  var a = 100;
  int b = 200;
  print(e.runtimeType);
  print(e.runtimeType.runtimeType);
  print(a.runtimeType);
  print(a.runtimeType.runtimeType);
  print(b.runtimeType);
  print("Hello Dart $a");
  print('Hi Dart $a');
  print("Hello Dart " + a.toString());
  print("B is $b");
}
