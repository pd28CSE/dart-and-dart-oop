class BaseClass {
  int? a;
  BaseClass(this.a) {
    a = 1111;
    print('BaseClass Constructor');
  }

  void fnc() {
    print('From BaseClass fnc function');
  }
}

class DerivedClass implements BaseClass {
  int? a;
  String? name;
  DerivedClass() {
    a = 333;
    name = 'Partho';
    print('DerivedClass Constructor');
  }

  /// implementation of fnc()
  @override
  void fnc() {
    print('From BaseClass fnc function. Name: $name a: ${this.a}');
  }
}

void main() {
  DerivedClass derivedClass = DerivedClass();
  derivedClass.fnc();
}
