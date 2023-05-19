class BaseClass {
  late String name;

  BaseClass() {
    print('BaseClass Constructor');
    name = 'Partho Debnath';
  }

  void fnc() {
    print('Form BaseClass fnc() Function');
  }
}

class DerivedClass extends BaseClass {
  DerivedClass() : super() {
    print('DerivedClass Constructor\n');
  }

  void printInfo() {
    print('Form DerivedClass printInfo() Function');
  }
}

void main() {
  DerivedClass derivedClass = DerivedClass();

  print(derivedClass.name);

  derivedClass.fnc();
  derivedClass.printInfo();
}
