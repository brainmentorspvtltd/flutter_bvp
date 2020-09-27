void main() {
  List<int> arr = [10, 20, 30, 40, 50];
  int result = add(100, 200);
  //add(10, 20);
  print("Result is $result");
  print(adder(1000, 2000));
  print(adder("Amit", "Srivastava"));
  var b = 100;
  // Anonymous Function
  // var w = () {
  //   print("W is a variable of Function type");
  // };
  // print(w);

  var add2 = (x, y) => x + y;

  Function w = () {
    print("W is a Anonymous Function");
    return 1000;
  };
  print("Runtime ${w.runtimeType}");
  w();
  print("Add is ${add.runtimeType}");
}

// Custom Function
// Function decleration style
int add(int x, int y) {
  return x + y;
}

adder(x, y) {
  return x + y;
}
