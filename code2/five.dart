void main() {
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
