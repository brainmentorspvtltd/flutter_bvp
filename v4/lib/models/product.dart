class Product {
  String _name;
  double _price;
  String _url;
  String imagePath;
  String _status;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  double get price => _price;

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  set price(double value) {
    _price = value;
  }

  @override
  String toString() {
    return 'Product{_name: $_name, _price: $_price, _url: $_url, imagePath: $imagePath, _status: $_status}';
  }
}
