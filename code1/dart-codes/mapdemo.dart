void main() {
  Map<String, int> phoneMap = {"Amit": 2222, "Ram": 4444, "Shyam": 5555};
  int phoneNo = phoneMap["Ram"];
  print("Ram Phone $phoneNo");
  // Property
  print(phoneMap.length);
  print(phoneMap.keys);
  print(phoneMap.values);
  print(phoneMap.isEmpty);
  phoneMap["tim"] = 7777;
  phoneMap["Amit"] = 6666;
  phoneMap.putIfAbsent("Amit", () => 3333);
  phoneMap.clear();
  bool r = phoneMap.containsKey("Amit");
  r = phoneMap.containsValue(2222);
  phoneMap.remove("Shyam");
  phoneMap.removeWhere((key, value) => key.startsWith("A"));
}
