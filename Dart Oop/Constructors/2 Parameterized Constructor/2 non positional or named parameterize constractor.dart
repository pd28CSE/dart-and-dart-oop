class MyClass1 {
  /// final means when the value is initialize, the value can't be change
  final String name;
  final int number;

  MyClass1({required this.name, required this.number}) {
    /// non-positional or named parameterize constructor
    print("non-positional or named parameterize constructor");
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

  /// parameterize constructor (Short Form)
  MyClass2({required this.name, required this.number});

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

void main() {
  /// create object with named arguments or non positional arguments
  MyClass1 obj1 = MyClass1(number: 123, name: 'Partho');
  obj1.printInfo();

  /// create object with named arguments or non positional arguments
  MyClass2 obj2 = MyClass2(name: 'Partho debnath', number: 1234);
  obj2.printInfo();
}
