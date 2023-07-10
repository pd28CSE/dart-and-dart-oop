void main() {
  int code = countryCode;
  print(code);
  print(countryCode);

  print(getCountryName());

  final (double, int) x = getGravityAndspeedOfLight();
  print(x);

  var (g, s) = getGravityAndspeedOfLight();
  print(g);
  print(s);

  List<dynamic> xy = foo();
  print(xy);

  print(getInfo());
}

// int get countryCode {
//   return 123;
// }
/// this is shorthand for "countryCode" Function. This is arrow or geter Function.
int get countryCode => 123;

// String getCountryName() {
//   return 'USA';
// }

/// this is shorthand for getCountryName() Function. or arrow Function.
String getCountryName() => 'USA';

(double gravity, int speedOfLight) getGravityAndspeedOfLight() {
  return (9.8, 299792458);
}

List<dynamic> foo() {
  return [42, "foobar"];
}

Map<String, dynamic> getInfo() {
  return {'abc': 'aeiou', 'mn': 12};
}
