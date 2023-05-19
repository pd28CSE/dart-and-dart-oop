class Employee {
  // Private properties
  late final String _name;
  late final int _id;

  // parameterize constructor with delault value
  Employee({required String name, int id = 20}) {
    _name = name;
    _id = id;
  }

// Getter method to access private property _name
  /// full form of getter method 'name'
  String get name {
    return _name;
  }

/*
  /// short form of getter method 'name'
  String get name => _name;
*/

// Getter method to access private property _id
  /// short form of get id method
  int get id => _id;

/*
  /// full form of getter method 'id'
  int get id {
    return _id;
  }
*/
}

void main() {
  // Create an object of Employee class
  Employee employee = Employee(name: 'T.s. Doremon');

  // Retrieve the values of the object using getter method
  print("Name: ${employee.name}");
  print("Id: ${employee.id}");
}
