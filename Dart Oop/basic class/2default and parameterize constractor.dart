class MyClass1 {
  String? name;
  int? number;

  MyClass1() {
    ///  default constructor
    print("default constructor");
  }

  void printInfo() {
    print(name);
    print(number);
  }
}

class MyClass2 {
  String? name;
  int? number;

  MyClass2() {
    ///  default constructor
    print("default constructor");
    name = 'Default Name';
    number = 222;
  }

  void printInfo() {
    print(name);
    print(number);
  }
}

void main() {
  MyClass1 obj1 = MyClass1();
  obj1.printInfo();

  MyClass2 obj2 = MyClass2();
  obj2.printInfo();
}
