void main(List<String> args) {
  int sum = 0;
  for (String s in args) {
    sum += int.parse(s);
  }
  print(sum);
}
