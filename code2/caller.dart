import './nested.dart';

void main() {
  //add();
  Function fn = calc();
  if (fn is Function) {
    print("Yes FN is Function");
    fn();
  } else {
    print("No it is not a Function");
  }
}

Function calc() {
  void add() {}
  final e = () {
    print("E Function");
  };
  return e;
}
