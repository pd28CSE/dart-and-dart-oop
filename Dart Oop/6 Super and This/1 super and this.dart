class Animal {
  String rest = 'sleeping animals';

  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  String rest = 'sleeping dog';

  @override
  void eat() {
    super.eat(); // call the "eat" method of the parent class
    print("Dog is eating");
  }

  void showRestStatus() {
    print(super.rest); // access the "rest" variable of the parent class
    print(this
        .rest); // this.rest and rest are identical // access the rest variable of this class
  }
}

void main() {
  Dog dog = Dog();

  dog.eat();
  dog.showRestStatus();
}
