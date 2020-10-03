void main() {
  List<Function> list = show();
  list[0]();
  list[1]();
  Map<String, Function> map = disp();
  map["adder"]();
  map["subtract"]();
  int r = add();
}

int add() {
  return 100;
}

Map<String, Function> disp() {
  add() {
    print("Add ");
  }

  sub() {
    print("Sub");
  }

  return {"adder": add, "subtract": sub};
}

List<Function> show() {
  add() {
    print("Add ");
  }

  sub() {
    print("Sub");
  }

  return [add, sub];
}
