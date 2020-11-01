class Menu {
  String _name;
  String _url;
  String _iconValue;
  String _status;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get url => _url;

  String get iconValue => _iconValue;

  set iconValue(String value) {
    _iconValue = value;
  }

  set url(String value) {
    _url = value;
  }

  String get status => _status;

  set status(String value) {
    _status = value;
  }

  @override
  String toString() {
    return 'Menu{_name: $_name, _url: $_url, _iconValue: $_iconValue, _status: $_status}';
  }
}
