import 'dart:io';

void main() {
  /*List<int> list = [10, 20, 30];
  list.forEach((ele) => print(ele)); */
  String path = '/Users/amit/Documents/bvp-flutter/dart-codes2/five.dart';
  File file = new File(path);
  print("Before ReadAsString");
  Future<String> future = file.readAsString();
  future.then((value) => print(value)).catchError((err) => print(err));
  print("After ReadAsString $future");
}
