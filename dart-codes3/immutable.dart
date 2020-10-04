class Immutable {
  final int a;
  final int b;
  const Immutable(this.a, this.b);
}

void main() {
  const rr = 100;
  Immutable obj = Immutable(10, 10);
  print(obj.a);
  print(obj.b);
}
