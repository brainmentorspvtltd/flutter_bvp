class Employee {
  int _id;
  String _name;
  double _salary;
  double _bonus;
  String _city;
  String _phone;
  Employee() {
    _id = 0;
    _name = '';
    _salary = 0.0;
  }
  // Employee.flexi2({this._id, this._name});
  Employee.flexiCons(
      {int id,
      String name,
      double salary,
      double bonus,
      String city = '',
      String phone = ''}) {
    this._id = id;
    this._name = name;
    this._salary = salary;
    this._bonus = bonus ?? 0;
    this._city = city;
    this._phone = phone;
  }
  //Employee.paramCons(this._id, this._name, this._salary);
  /*Employee.paramCons(int id, String name, double salary) {
    this._id = id;
    this._name = name;
    this._salary = salary;
  }*/
  set id(int id) {
    if (id <= 0) {
      print("Id Can't be zero or negative ");
      return;
    }
    this._id = id;
  }

  get id {
    return this._id;
  }

  set name(String name) {
    this._name = name;
  }

  get name {
    return this._name;
  }

  set salary(double salary) {
    if (salary <= 0) {
      print("Salary can't be zero or negative ");
      return;
    }
    this._salary = salary;
  }

  get salary {
    return this._salary;
  }

  void display() {
    print("id is $id Name is $name Salary is $salary");
  }
}
