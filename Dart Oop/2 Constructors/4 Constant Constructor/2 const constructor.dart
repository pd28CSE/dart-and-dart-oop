class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  // Constant Constructor
  const Student({this.name, this.age, this.rollNumber});
}

void main() {
  // Here student is object of Student.
  const Student student1 = Student(name: "John", age: 20, rollNumber: 1);
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Roll Number: ${student1.rollNumber}");

  const Student student2 = Student(name: "John", age: 20, rollNumber: 1);

  print(student1.hashCode);
  print(student2.hashCode);
}
