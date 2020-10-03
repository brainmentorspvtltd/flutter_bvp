void main() {
  // Implicit Way
  var x = () {
    print("I am Anonymous Function");
  };
  // Explicit Way
  Function y = () {
    print("I am Anonymous Function");
  };
  List<int> l = [10, 20, 30];
  l.forEach((element) {
    print("Element is $element");
  });
  l.forEach((element) => print(element));
}

int add(int x, int y) {
  return x + y;
}

adder(x, y) {
  return x + y;
}
