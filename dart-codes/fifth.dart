void main() {
  String name = "Amit";
  String name2 = "Amit";
  String name3 = "Amit".toString();
  String b1 = "Mr Ram Kumar";
  bool r = b1.startsWith("Mr");
  r = b1.endsWith("Kumar");
  r = b1.contains("Ram");
  int index = b1.indexOf("Ram");
  index = b1.lastIndexOf("a");
  String subString = b1.substring(2, 5);
  String address = "A-10, Plot No - 100, Roop Nagar, Delhi-7";
  var arr = address.split(",");
  print("###########################");
  for (String arrValue in arr) {
    print("ArrValue is $arrValue");
  }
  print(name.toUpperCase());
  print(name.toLowerCase());
  print("*******************************");
  print("      Brain Mentors       ".trim());
  print(name == name2);
  print(name == name3);
  name = "Ram";
  print(name.length); // Property
  print(name.isEmpty);
  print(name.isNotEmpty);
  StringBuffer sb = new StringBuffer(name);
  StringBuffer sb2 = new StringBuffer(name2);
  print(sb);
  print(sb == sb2);
  sb.write("hjdkhgjdfhjkghdfjkgh");
  print(sb);
}
