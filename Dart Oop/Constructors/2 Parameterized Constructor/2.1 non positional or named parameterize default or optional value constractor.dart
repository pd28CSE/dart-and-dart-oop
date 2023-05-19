class MyClass1 {
  /// final means when the value is initialize, the value can't be change
  final String name;
  final int number;

  MyClass1({required this.name, this.number = 111}) {
    /// non positional or named parameterize default or optional value constractor (Full Form)
    print(
        "non positional or named parameterize default or optional constractor (Full Form)");
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

  /// non positional or named parameterize default or optional value constractor (Short Form)
  MyClass2({this.name = 'This is Default name', this.number = 222});

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

void main() {
  /// create object with named arguments or non positional arguments with default value
  MyClass1 obj1 = MyClass1(name: 'Partho');
  obj1.printInfo();

  /// create object with named arguments or non positional arguments with default value
  MyClass2 obj2 = MyClass2(number: 1234);
  obj2.printInfo();

  MyClass2 obj3 = MyClass2(name: 'Partho');
  obj3.printInfo();

  MyClass2 obj4 = MyClass2();
  obj4.printInfo();
}
