void main() {
  var s = {200, 400, 10, 20, 30, 50, 100};
  print("Take While ");
  var ff = s.toList();
  ff.sort((a, b) => a - b);
  print('After Sort $ff');

  s.takeWhile((value) => value > 50).forEach((element) => print(element));
  s
      .skipWhile((value) => value > 50)
      .forEach((element) => print("Skip While $element"));
  s.any((element) => element > 30);
  var s2 = s.difference({10, 20});
  //print(s2);
  var s3 = s.intersection({10, 20});
  //print(s3);
}
