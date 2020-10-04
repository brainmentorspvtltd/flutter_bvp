abstract class Account {
  int id;
  String name;
  double balance;
  Account() {
    print("Account Class Default Cons call");
    id = 0;
    name = '';
    balance = 0.0;
  }
  void withDraw(); // abstract
  Account.cons2(int x) {
    print("Cons2 ");
  }

  Account.cons3(String name, double balance) {
    this.name = name;
    this.balance = balance;
    print("I am Account cons3 Cons");
  }
  void deposit() {
    print("Account Deposit ");
  }

  // Redirection Cons
  Account.cons() : this.cons2(10);
  //Account.cons() : this();
  /* Account.cons(double balance): this() {
    print(" I am a Named One of Account");
  }*/
}

class SavingAccount extends Account {
  double roi;
  int limit;
  @override
  void withDraw() {
    print("WithDraw with Daily Limit...");
  }

  @override
  void deposit() {
    super.deposit();
    print("Saving Account Deposit Override PAN CARD  ");
  }

  /*SavingAccount() : super(){

  }*/
  SavingAccount() : super.cons() {
    // : super() {
    this.roi = 10.2;
    print("Saving Account Default Cons Call");
  }
  //redirection Constructor syntax
  SavingAccount.secondCons(String name, double balance, double roi)
      : super.cons3(name, balance) {
    this.roi = roi;
    print("I am Second Cons");
  }
  SavingAccount.mycons() : this();
  /*SavingAccount.mycons(double roi) : this(){
  //: super.cons(100.20) {
    this.roi = roi;
    print("I am a Named ONe of SavingAccount");
  }*/
}

void main() {
  //SavingAccount sa = SavingAccount();
  // Account account = Account();
  SavingAccount sa = SavingAccount.mycons();
  sa.deposit();
}
