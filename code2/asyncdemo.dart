import 'dart:async';

Future<String> giveMeFuture() {
  return Future.delayed(
      Duration(seconds: 10), () => "I Will return After 10 Sec");
}

void main() {
  Future<String> future = giveMeFuture();
  print("After Calling Future $future");
  future
      .then((value) => print("VALUE IS $value"))
      .catchError((err) => print("Err is $err"));
}
