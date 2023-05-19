// Most Importan 7*, careful

class BaseClass {
  String _name;
  String _country;
  BaseClass(this._name, this._country);

  set setName(String name) {
    _name = name;
  }

  set setCountry(String country) {
    _country = country;
  }

  String get getName => _name;

  String get getCountry {
    return _country;
  }

  void printInfo() {
    print('Form BaseClass printInfo Function');
    print(getName);
    print(getCountry);
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
  set setName(String name) {
    super.setName = name;
  }

  void printMyInfo() {
    print('Form DerivedClass printMyInfo Function');
    print('_name: ${_name}'); //or _name and this._name are identical
    print(getCountry);
    print(code);
    print('');
  }
}

void main() {
  DerivedClass derivedClass = DerivedClass('Partho', 'BD', 123);

  derivedClass.printInfo();
  derivedClass.printMyInfo();

  derivedClass.setName = 'Change Name';
  derivedClass.printMyInfo();
}
