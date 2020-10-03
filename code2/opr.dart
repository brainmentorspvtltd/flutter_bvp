import 'dart:io' as myio;

//void show(dynamic t) {
void show(t) {
  if (t is String) {
    print("T is String ${t.toUpperCase()}");
  } else if (t is List) {
    t.forEach((element) {
      print(element);
    });
  }
}

void main() {
  List<int> l2 = List();
  String name = "Amit";
  name.toUpperCase().trim().substring(1).length;
  l2..add(100)..add(200)..add(300)..add(400);
  /*l2.add(1000);
  l2.add(2000);
  l2.add(3000);
  */

  //myio.File
  print(7 / 2); // double
  print(7 ~/ 2); // int
  int a1 = 100;

  show("Ram");
  show([10, 20, 30]);
  String a = "Amit";
  print(a is List);
  print(a is! List);
  List l = [10, 20, 30];
  //if(true)
  if (l is List) {
    print("Yes l is Lists");
  } else {
    print("It is not List");
  }
}
