class Employee {
  int _id;
  String name;
  double salary;
  set eid(int id) {
    if (id > 0) {
      this._id = id;
    } else {
      print("Invald ID ");
    }
  }

  get eid {
    return this._id;
  }

  void printIt() {
    print("Id is $_id NAme is $name and Salary is $salary");
  }
}

void main() {
  Employee ram = Employee();
  ram.eid = 1001; // setter call
  //ram.id = 1001;
  ram.name = "Ram";
  ram.salary = 9999;
  //print(ram.id);
  print(ram.name);
  print(ram.salary);
}
