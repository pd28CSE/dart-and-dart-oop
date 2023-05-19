void main() {
  /// primitive Data Types
  int nmber = 10;
  double pi = 3.1416;
  String galaxy = "Milky Way";
  bool isValid = true;

  /// others
  num age = 24;
  num gravity = 9.8;
  var name;
  dynamic xyz = [1, 2, 3, 5, true, 'Partho', 3.1416];

  List<int> numbers = [1, 2, 3, 4, 5, 6];
  Map<String, dynamic> personInfo = {
    'name': 'Partho',
    'country': 'Bangladesh',
  };

  print('------------var------------\n\n');
  var ab;
  ab = 10;
  print(ab.runtimeType);
  ab = 'BD';
  print(ab.runtimeType);

  print('------------var------------\n\n');
  var ac = 10;
  print(ac.runtimeType);

  /// Not possible because, when a variable is declared with a value using the "var" keyword,
  /// the data type of this variable is fixed. this reasons another data-type value can
  ///  not be assign to this variable.
  // ac = 'BD'; // error occurs  // <<==========================
  print(ac.runtimeType);

  print('------------dynamic------------\n\n');
  dynamic x;
  x = 10;
  print(x.runtimeType);
  x = 'fdggd';
  print(x.runtimeType);

  print('------------dynamic------------\n\n');
  dynamic y = '32';
  print(y.runtimeType);
  y = 9.8;
  print(y.runtimeType);
}
