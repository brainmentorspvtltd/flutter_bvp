void main() {
  Map<String, Function> map = calc();
  map["add"]();
  map["add"]();
  map["add"]();
  map["sub"]();
  map["div"]();
}

Map<String, Function> calc() {
  int x = 100;
  add() {
    x++;
    print(x);
  }

  sub() {
    x--;
    print(x);
  }

  div() {
    x ~/= 10;
    print(x);
  }

  return {"add": add, "sub": sub, "div": div};
}
