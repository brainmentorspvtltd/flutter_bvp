import 'dart:io';

void main() {
  stdout.write("Enter the First Number ");
  int firstNumber = int.parse(stdin.readLineSync());
  print("Enter the Second Number");
  int secondNumber = int.parse(stdin.readLineSync());
  //int result = firstNumber + secondNumber;
  print("Sum is ${firstNumber + secondNumber}");
  //print("Result is $result");
}
