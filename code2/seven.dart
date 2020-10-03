import '../dart-codes/nine.dart';

void main() {
  /*
  add(1);
  add(10);
  add(10, 20);
  add(10, 20, 30);
  */
  sub(1000);
  sub(900, x: 10);
  sub(11, z: 10);
  sub(22, z: 10, x: 1, y: 2);
  sub(32, y: 3, z: 1, x: 2);
}

void printIt({List<int> list = const [1, 2, 3]}) {
  print(list);
}

void printIt2(
    {Map<String, int> map = const {"BVP": 2222, "BrainMentors": 3333}}) {
  print(map);
}

int sub(int m, {int x = 100, int y = 200, int z}) {
  print("X is $x and Y is $y and z is $z");
}

int add(int m, [int x, int y]) {
  print(m);
  print(x);
  print(y);
  print("*************************");
}
