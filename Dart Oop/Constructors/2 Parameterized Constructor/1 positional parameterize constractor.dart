class MyClass1 {
  String? name;
  int? number;

  MyClass1(String name, int phoneNo) {
    /// parameterize constructor

    print("parameterize constructor");
    this.name = name;
    number = phoneNo;
  }

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

class MyClass2 {
  /// final means when the value is initialize, the value can't be change
  final String name;
  final int number;

  /*
  /// parameterize constructor (Details Form)
  MyClass2(this.name, this.number) {
    /// parameterize constructor

    print("parameterize constructor");
  }
  */

  /// parameterize constructor (Short Form)
  MyClass2(this.name, this.number);

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

void main() {
  MyClass1 obj1 = MyClass1('Partho', 123);
  obj1.printInfo();

  MyClass2 obj2 = MyClass2('Partho debnath', 1234);
  obj2.printInfo();
}
