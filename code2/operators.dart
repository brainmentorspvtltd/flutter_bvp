void main() {
  var f = 100;
  const g = 10 + 20 - 5;
  //const g1 = DateTime.now(); // Compile Time
  final g1 = DateTime.now(); // Runtime
  const ee = [10, 20, 30];

  final int x = 100;
  const y = 200;
  String name = 'Amit'; // default value is null
  // if (name != null) {
  //   print(name);
  // }
  // else{
  //   print("name not present")
  // }
  print(name ?? "Name is Not Present ");
  int x1 = 2000;
  x1 ??= 100;
  print("X1 is $x1");
  print(name != null ? name : 'Name is Not Present');
}
