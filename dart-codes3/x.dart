void main() {
  var list = [
    {"name": "Smartphone", "price": 1000},
    {"name": "Bravia TV", "price": 1100},
    {"name": "Mac book", "price": 45000}
  ];
  //10.00 (intl)
  list.sort((a, b) => a['name'].toString().compareTo(b['name']));
  print(list);
}
