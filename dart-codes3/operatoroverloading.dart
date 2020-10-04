class Vector {
  //extends Object {
  int x, y;
  Vector(this.x, this.y);
  Vector operator +(Vector obj) => Vector(this.x + obj.x, this.y + obj.y);
  @override
  String toString() {
    return "X is $x and Y is $y";
  }
}

void main() {
  Vector a = Vector(1, 1);
  Vector b = Vector(2, 2);
  Vector c = a + b;
  print(c); // c.toString()
}
