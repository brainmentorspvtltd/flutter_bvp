void main() {
  String name = 'Amit';
  print(name);
  int x = 100;
  name = "Amit";

// get single char
  print(name[0]);

  print("A Ascii is ${name.codeUnitAt(0)}");
  print("All Ascii ${name.codeUnits}");

  print("Current " + name.runtimeType.toString());
  print("Base " + name.runtimeType.runtimeType.toString());
  print("Is ${name is String}");
  // Single line
  String msg = 'gfdghdfjkghdfjkgfdjhkg'
      'ghdfjgjkdfhgdfkjghjdhfgk'
      'ghdfjgjdfhjkgfdj';

  // Multi Line '''
  // """
  String msg2 = """ Hello\n\n
  this is a multi line string
  example $x   """ +
      x.toString();
  String msg3 = '''ghfdjkghdfjkg
  ghfdjkghfdgkdf
  gfdhjkgdfk
  ghfdjkgh''';
  print(msg2);
  print(msg3);
  print(msg);
}
