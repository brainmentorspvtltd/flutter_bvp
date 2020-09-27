void main() {
  List<int> list = [1, 10, 5, 2, 11, 9, 20, 18];
  var s11 = list.sublist(2, 4);
  var s22 = list.sublist(5, 8);
  print(s11 + s22);
  //list.forEach((ele) => print(ele));
  List<int> subList = list.sublist(3, 5);
  // print("Sub List is $subList");
  /*Iterable<int> itr = list.skip(3);
  itr.forEach((element) {
    print("Element is $element");
  });*/
  //list.skip(3).forEach((element) => print(element));
  list.sublist(list.skip(3).length, list.length);
  String s1 = list.skip(3).join('=>');
  String str = list.join("=>");
  var e = [10, 9, 1, 2];
  e.sort();
  print("After E Sort $e");
  //print("Join $str");

  // Sort
  //list.sort((a, b) => a - b);
  list.sort((a, b) => b - a);
  var names = ["Kim", "Tim", "Amit", "Ram", "Shyam", "Amitesh"];
  names.sort((a, b) => a.compareTo(b)); // b.compareTo(a)
  print("Names are $names");
  print("Sort is $list");
  names.every((name) => name.startsWith("m", 3));
  bool result = names.every((name) => name.contains("m"));
  print(result);

  names
      .where((name) => name.startsWith("A"))
      .forEach((element) => print(element));

  var x1 = names.firstWhere((name) => name.startsWith("A"));
  print("First One $x1");
  var y = [10, 20, 30, 40, 50, 60];
  print("FOLD......");
  int r1 = y.fold(0, (previousValue, element) => previousValue + element);
  print(r1);

  // Property
  print(list.length);
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.first);
  print(list.last);

  // Operator
}
