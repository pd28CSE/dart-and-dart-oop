class MyClass {
  String? name;
  int? number;

  void setName(String name) {
    this.name = name;
  }

  void setNumber(int number) {
    this.number = number;
  }

  String getName() {
    return name as String;
  }

  int getNumber() {
    return number as int;
  }
}

void main() {
  /// create object or instance of the MyClass
  MyClass obj = MyClass();

  // print('-----------Set Name & Number using Variable--------------');
  /// Set Name & Number using Variable
  obj.name = 'Partho Debneth';
  obj.number = 11111;

  // print('-----------Get Name & Number using Variable--------------');
  /// Get Name & Number using Variable
  print(obj.name);
  print(obj.number);

  // print('-----------Set Name & Number using Function--------------');
  /// Set Name & Number using Function
  obj.setName('Partho');
  obj.setNumber(1234);

  // print('-----------Get Name & Number using Function--------------');
  /// Get Name & Number using Function
  print(obj.getName());
  print(obj.getNumber());
}
