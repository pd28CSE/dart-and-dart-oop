class Employee1 {
  // Private properties
  late String _name;
  late int _id;

  Employee1({required String name, required int id}) {
    _name = name;
    _id = id;
  }

  // Setter method to update private property _id
  void setId(int id) {
    this._id = id;
  }

// Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }

// Getter method to access private property _id
  int getId() {
    return _id;
  }

// Getter method to access private property _name
  String getName() {
    return _name;
  }
}

class Employee2 {
  // Private properties
  late final String _name;
  late final int _id;

  // parameterize constructor with delault value
  Employee2({required String name, int id = 20}) {
    _name = name;
    _id = id;
  }

// Getter method to access private property _id
  int getId() {
    return _id;
  }

// Getter method to access private property _name
  String getName() {
    return _name;
  }
}

void main() {
  // Create an object of Employee1 class
  Employee1 employee1 = Employee1(name: 'Patho', id: 1234);

  // Retrieve the values of the object using getter
  print("Name: ${employee1.getName()}");
  print("Id: ${employee1.getId()}");

  // setting values to the object using setter
  employee1.setName("Partho Debnath");
  employee1.setId(344);

  // Retrieve the values of the object using getter
  print('\n------------After Set----------\n');
  print("Name: ${employee1.getName()}");
  print("Id: ${employee1.getId()}");

  print('\n================================\n\n');

  // Create an object of Employee2 class
  Employee2 employee2 = Employee2(name: 'T.s. Doremon');

  // Retrieve the values of the object using getter
  print("Name: ${employee2.getName()}");
  print("Id: ${employee2.getId()}");
}
