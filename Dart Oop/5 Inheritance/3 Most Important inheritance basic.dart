// Most Importan 7*, careful

class BaseClass {
  String _name;
  String _country;
  BaseClass(this._name, this._country);

  set name(String name) {
    _name = name;
  }

  set country(String country) {
    _country = country;
  }

  String get name => _name;

  String get country {
    return _country;
  }

  void printInfo() {
    print('Form BaseClass printInfo Function');
    print(name);
    print(country);
    print('');
  }
}

class DerivedClass extends BaseClass {
  int code;
  DerivedClass(String name, String country, this.code) : super(name, country) {
    _name = name + ' Debnath';
  }

  @override
  void printInfo() {
    super.printInfo();
    print('Form DerivedClass printInfo Function');
    print(code);
    print('');
  }

  @override
  set name(String name) {
    _name = name;
  }

  void printMyInfo() {
    print('Form DerivedClass printMyInfo Function');
    print('super._name: ${super._name}');
    print('this._name: ${this._name}');
    print('_name: ${_name}');
    print(country);
    print(code);
    print('');
  }
}

void main() {
  DerivedClass derivedClass = DerivedClass('Partho', 'BD', 123);

  derivedClass.printInfo();
  derivedClass.printMyInfo();

  derivedClass.name = '"name" Change';
  derivedClass.printMyInfo();
}
