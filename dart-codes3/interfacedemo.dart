abstract class CommonPlayer {
  void hit() {
    print("Hit");
  }

  void defense() {
    print("Defense");
  }
}

class IPlayer {
  static final int MIN = 100;
  //int maxPower = 100;
  final int MAX = 100;
  void jump() {}
  void walk() {}
  void punch() {}
  void run() {}
  void kick() {}
}

class Honda extends CommonPlayer implements IPlayer {
  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void kick() {
    // TODO: implement kick
  }

  @override
  void punch() {
    // TODO: implement punch
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void walk() {
    // TODO: implement walk
  }

  @override
  // TODO: implement MAX
  int get MAX => MAX;

  //@override
  //int maxPower;
}

class Ryu implements IPlayer {
  @override
  void jump() {
    // TODO: implement jump
  }

  @override
  void kick() {
    // TODO: implement kick
  }

  @override
  void punch() {
    // TODO: implement punch
  }

  @override
  void run() {
    // TODO: implement run
  }

  @override
  void walk() {
    // TODO: implement walk
  }
}
