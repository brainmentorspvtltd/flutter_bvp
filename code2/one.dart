class A1 {
  //final int x = 100; // Instance Member
  final int x;
  static const int y = 200;
  A1(this.x);

  // const int y = 200;
}

void main() {
  const list = [10, 20, 30, 40];
  final int MAX = 100;
  const int MIN = 1;
  final StringBuffer sb = new StringBuffer();
  final StringBuffer sb2 = StringBuffer();
  A1 obj = A1(100);
  print(A1.y);
  print(obj.x);
  //sb2 = StringBuffer();
  //const StringBuffer sb3 = StringBuffer();
}
