class Employee {
  // Private properties
  late String _name;
  late int _id;

  Employee({required String name, required int id}) {
    _name = name;
    _id = id;
  }

  // Setter method to update private property _id
  set id(int id) {
    this._id = id;
  }

// Setter method to update private property _name
  set name(String name) {
    this._name = name;
  }

// Getter method to access private property _id
  int get id {
    return _id;
  }

// Getter method to access private property _name
  String get name => _name;
}

void main() {
  // Create an object of Employee class
  Employee employee = Employee(name: 'Patho', id: 1234);

  // Retrieve the values of the object using getter
  print("Name: ${employee.name}");
  print("Id: ${employee.id}");

  // setting values to the object using setter
  employee.name = "Partho Debnath";
  employee.id = 344;

  // Retrieve the values of the object using getter
  print('\n------------After Set----------\n');
  print("Name: ${employee.name}");
  print("Id: ${employee.id}");
}
