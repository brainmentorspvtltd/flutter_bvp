void main() {
  loop((int i) => print("Cube ${i * i * i}"),
      (int i) => print("Table ${5 * i}"));
  print("*******************************");
  loop(cube, (int i) => print("Table ${5 * i}"));
  //loop((int i) => print(5 * i));
}

void cube(int num) {
  print(num * num * num);
}

loop(Function fn, Function fn2) {
  for (int i = 1; i <= 10; i++) {
    fn(i);
    fn2(i);
  }
}
