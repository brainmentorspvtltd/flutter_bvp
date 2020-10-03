void main() {
  List<int> list = [10, 20, 30];
  /*for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }*/
  for (int l in list) {
    print(l);
  }
  list.forEach((element) => print(element));
}
