class MyClass1 {
  String? name;
  int? number;

  MyClass1(String name, [int phoneNo = 111]) {
    /// parameterize constructor with dafault or optional value

    print("parameterize constructor with dafault or optional value");
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

  /// parameterize constructor with dafault or optional value (Details Form)
  MyClass2(this.name, [this.number = 222]) {
    /// parameterize constructor

    print(
        "parameterize constructor with dafault or optional value (Details Form)");
  }

/*
  /// parameterize constructor with dafault or optional value (Short Form)
  MyClass2(this.name, [this.number = 222]);
*/

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

class MyClass3 {
  /// final means when the value is initialize, the value can't be change
  final String name;
  final int number;
/*
  /// parameterize constructor with dafault or optional value (Full Form)
  MyClass3([this.name = 'This is Default Name', this.number = 222]) {
    /// parameterize constructor

    print("parameterize constructor with dafault or optional value (Full Form)");
  }
*/

  /// parameterize constructor with dafault or optional value (Short Form)
  MyClass3([this.name = 'This is Default Name', this.number = 222]);

  void printInfo() {
    /// print the the name and the number
    print(name);
    print(number);
  }
}

void main() {
  MyClass1 obj1 = MyClass1('Partho');
  obj1.printInfo();

  MyClass2 obj2 = MyClass2('Partho debnath');
  obj2.printInfo();

  MyClass3 obj3 = MyClass3();
  obj3.printInfo();
}
