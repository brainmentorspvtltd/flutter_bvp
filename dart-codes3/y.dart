import 'dart:io';

void main() {
  Map<String, int> map = {};
  while (true) {
    print("Enter the Key");
    String key = stdin.readLineSync();
    print("Enter the Value");
    int value = int.parse(stdin.readLineSync());
    map[key] = value;
    print("Enter Y to Exit");
    String y = stdin.readLineSync();
    if (y.compareTo('Y') == 0) {
      break;
    }
  }
  print("Map is $map");
}
