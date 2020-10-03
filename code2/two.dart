void main() {
  var a1 = getList();
  var a2 = getList();
  print(a1 == a2);
  print(a1); //a1.toString();
}

getList() {
  return const [1, 2];
}
