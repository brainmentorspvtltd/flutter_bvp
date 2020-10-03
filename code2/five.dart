void show([List<dynamic> list]) {}
void main() {
  show();
  show(["Ram", "Shyam"]);
  show([10, 20, 30]);

  outer:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == j) {
        continue outer;
        //break;
        //break outer;
      }
      print("I is $i and J is $j");
    }
  }
}
