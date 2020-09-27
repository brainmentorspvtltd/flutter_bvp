void main() {
  var m = [1, 2]; // Implicit Way
  List<int> m2 = [90, 100]; // Explicit Way
  print(m.runtimeType.runtimeType);
  print(m2.runtimeType.runtimeType);
  List<int> list = [10, 20, 30, 40, 50, 20, 20];
  int e = list[0]; // Access
  e = list.elementAt(0);
  list[4] = 1000; // Update
  //print(list);
  //print(list.toString());
  list.add(10000); // add at last
  list.insert(1, 99999);
  print("After Add List is $list");
  int index = list.indexOf(20);
  print("Index is $index");
  print("LastIndex ${list.lastIndexOf(20)}");
  // Remove
  list.removeAt(0);
  list.removeLast();
  list.remove(100);
  list.removeRange(2, 5);
  list.clear();
  bool result = list.contains(100);
  print(list.contains(100) ? "Found " : "Not found");
}
