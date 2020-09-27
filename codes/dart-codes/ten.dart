//import 'dart:core';

void main() {
  var arr3 = [
    [10, 20],
    [1, 2, 3],
    [90, 100, 101]
  ];
  /*
  arr3.forEach((ele) {
    ele.forEach((element) {
      print("2d Ele $element");
    });
  });
  */

  arr3.forEach((ele) => ele.forEach((element) => print(element)));

  print("##############################");
  List<List<int>> arr2 = [
    [10, 20],
    [30, 40],
    [50, 60, 70, 80]
  ];
  List<int> arr = [10, 20, 1, 90, 5, 10, 60, 100];
  // for (int i = 0; i < arr.length; i++) {
  //   print(arr[i]);
  // }
  /*
  for (int i in arr) {
    print(i);
  }*/
  // arr.forEach(printIt);
  // arr.forEach((ele) {
  //   print("Element is $ele");
  // });
  arr.forEach((ele) => print(ele));
  forEach(printIt);
}

void forEach(Function fn) {
  for (int i = 1; i <= 10; i++) {
    fn(i);
  }
}

printIt(ele) {
  print("Element is $ele");
}
