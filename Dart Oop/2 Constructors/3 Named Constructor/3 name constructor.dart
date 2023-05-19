import 'dart:convert';

class Person {
  String? name;
  int? age;

  /// positional parameterize constructor
  Person(this.name, this.age);

  /// Named constructor
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  /// Named constructor
  Person.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}

void main() {
  Person p0 = Person('Doremon', 19);
  print("Person 0 name: ${p0.name}");
  print("Person 20 age: ${p0.age}");

  Map<String, dynamic> json1 = {"name": "Partho", "age": 24};
  Map<String, dynamic> json2 = {"name": "Tom", "age": 24};
  Map<String, dynamic> json3 = {"name": "Partho Debnath", "age": 24};

  String jsonString1 = json.encode(json1);
  String jsonString2 = json.encode(json2);

  Person p1 = Person.fromJsonString(jsonString1);
  print("Person 1 name: ${p1.name}");
  print("Person 1 age: ${p1.age}");

  Person p2 = Person.fromJsonString(jsonString2);
  print("Person 2 name: ${p2.name}");
  print("Person 2 age: ${p2.age}");

  Person p3 = Person.fromJson(json3);
  print("Person 2 name: ${p3.name}");
  print("Person 2 age: ${p3.age}");
}
