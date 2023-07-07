import 'dart:convert';

class MyClass {
  final String name;
  final String country;
  final String city;
  final int hCode;
  final double gravity;

  MyClass({
    required this.name,
    required this.country,
    required this.city,
    required this.hCode,
    required this.gravity,
  });

  factory MyClass.fromJson(Map<String, dynamic> json) {
    return MyClass(
      name: json['name'],
      country: json['country'],
      city: json['city'],
      hCode: json['hCode'],
      gravity: json['gravity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'country': country,
      'city': city,
      'hCode': hCode,
      'gravity': gravity,
    };
  }
}

void main() {
  final Map<String, dynamic> json = {
    'name': 'Partho Debnath',
    'country': 'Bangladesh',
    'city': 'Dhaka',
    'hCode': 5,
    'gravity': 9.8,
  };

  MyClass myClass = MyClass.fromJson(json);
  print(myClass.name);
  print(myClass.country);
  print(myClass.city);
  print(myClass.hCode);
  print(myClass.gravity);

  final String stringData = jsonEncode(myClass);
  print(stringData);
}
