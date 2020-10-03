void show() {
  int x = 100;
  void disp() {
    //int x = 200;
    print("disp x is $x");
    void output() {
      // int x = 300;
      print("Output x is $x");
    }

    output();
  }

  disp();
  print("show x is $x");
}

void main() {
  show();
}
