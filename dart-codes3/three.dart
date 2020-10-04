class X {
  void show() {
    print("I am X Show");
  }
}

class Y {
  void disp() {
    print("I am Y Disp");
  }
}

class Z {
  void output() {
    print("I am Z Disp");
  }
}

class P {
  void result() {
    print("I am P Result");
  }
}

class Child extends P with X, Y, Z {
  void callIt() {
    output();
    result();
    disp();
    show();
  }
}

void main() {
  List<Child> childList = [Child(), Child()];
  Child c = Child();
  c.callIt();
}
