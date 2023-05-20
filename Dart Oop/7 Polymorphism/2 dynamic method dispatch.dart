abstract class Base {
  int x;
  Base({required this.x});

  /// concrete method
  // A concrete method means, the method has complete definition
  //but it can be overridden in the inherited class.
  void fnc() {
    print('Base fnc x: $x');
  }

  /// abstract method
  int sum(int a, int b);
}

class Derived1 extends Base {
  int y;
  Derived1({required this.y, int a = 999}) : super(x: a);

  @override
  void fnc() {
    super.fnc();
    print('Derived1 fnc x: $x');
    print('Derived1 fnc y: $y');
  }

  @override
  int sum(int a, int b) {
    print('Derived1 sum');
    return a + b;
  }
}

class Derived2 implements Base {
  @override
  int x;

  Derived2(this.x);

  @override
  void fnc() {
    print('Derived2 fnc x: $x');
  }

  @override
  int sum(int a, int b) {
    print('Derived2 sum');
    return a + b;
  }
}

void main() {
  Derived1 obj1 = Derived1(a: 10, y: 20);
  obj1.fnc();
  print(obj1.sum(10, 20));

  print(obj1 is Derived1);
  print(obj1 is Base);
  print('');

  Base base1 = Derived1(y: 22);
  base1.fnc();
  print(base1.sum(20, 20));

  print(base1 is Base);
  print(base1 is Derived1);
  print('');

  Derived2 derived2 = Derived2(200);
  derived2.fnc();
  print(derived2.sum(20, 30));

  print(derived2 is Base);
  print(derived2 is Derived2);
  print('');

  print(derived2 is Derived1);
}
