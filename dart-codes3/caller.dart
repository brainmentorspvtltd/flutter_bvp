import './employee.dart';

void main() {
  //Employee ram = Employee();
  Employee ram = Employee.flexiCons(
      id: 1001, name: "Ram", salary: 9999, bonus: 1000, phone: "2222");
  //ram = Employee.paramCons(1001, "Ram", 9999);
  //Employee ram = Employee(1001, "Ram", 9090);
  ram.display();
  /*ram.id = 1001; // setter
  ram.salary = 9000; */
  //ram.display();
  //print(ram.id); // getter
}
