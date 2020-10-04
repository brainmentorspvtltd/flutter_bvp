class A {
  A._() {
    print("Private Cons");
  }
  static int y = 100;
  static const int z = 100;
  static void show() {
    print("A show");
  }
}

void main() {
  print(A.y);
  A.show();
}
