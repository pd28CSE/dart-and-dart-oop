abstract class BaseClass1 {
  void start() {
    print('BaseClass1 start method');
  }

  /// abstract method
  void fnc();

  /// abstract method
  int mx(int a, int b);

  /// concrete method
  // A concrete method means, the method has complete definition
  //but it can be overridden in the inherited class.
  void stop() {
    print('BaseClass1 stop method');
  }
}

abstract class BaseClass2 {
  void start() {
    print('BaseClass2 start method');
  }

  /// abstract method
  void info();

  /// abstract method
  int mx(int a, int b);

  void stop() {
    print('BaseClass2 stop method');
  }
}

class MyImplements implements BaseClass1, BaseClass2 {
  /// implementntation of start method
  @override
  void start() {
    print('MyImplements start method');
  }

  /// implementntation of fnc method
  @override
  void fnc() {
    print('MyImplements fnc method');
  }

  /// implementntation of mx method
  @override
  int mx(int a, int b) {
    print('from MyImplements mx method: ${a + b}');
    return a + b;
  }

  /// implementntation of mx method
  @override
  void stop() {
    print('MyImplements stop method');
  }

  /// implementntation of mx method
  @override
  void info() {
    print('MyImplements info method');
  }
}

void main() {
  MyImplements myImplements = MyImplements();

  myImplements.start();
  myImplements.info();
  myImplements.fnc();
  print(myImplements.mx(10, 20));
  myImplements.stop();
}
