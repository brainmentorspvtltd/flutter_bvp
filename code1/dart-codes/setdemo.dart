void main() {
  var set = {"Bang Bang", "Boom Boom ", "Bang Bang"};
  print(set);
  Set<int> set2 = new Set();
  set2.add(10);
  set2.add(10);
  set2.add(10);
  set2.add(20);
  set2.add(20);
  set2.add(10);
  set2.clear();
  set2.contains(10);
  set.elementAt(1);

  print(set2);
  set2.forEach((element) => print(element));
  for (int i in set2) {
    print(i);
  }

  // Property
  print(set2.first);
  print(set2.last);
  print(set2.length);
  print(set2.isEmpty);
  print(set2.isNotEmpty);
}
