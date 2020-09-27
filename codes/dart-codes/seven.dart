void main() {
  var arr = [10, 20, 30, 40, 50];
  List list = [10, 20, 30, 40, 50];
  // Not Generic
  var a = [10, 'Amit', true, 90.20];
  // Generic
  List<String> l = ["Amit", "Ram", "Shyam"];
  List<int> l2 = [10, 20, 30];
  List<String> items = ["Mobile", "Led TV", "Fire Stick"];
  print("Items in Your Cart are $items");
  List<String> songs = ["It's My Life", "Bang Bang"];
}
