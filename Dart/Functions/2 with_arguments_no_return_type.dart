void main() {
  myPositionalArgumentFunction('Bangladesh', 111);

  myPositionalArgumentAndDefaultValueFunction('Nepal', 333);
  myPositionalArgumentAndDefaultValueFunction('Nepal', 333,
      capitalCity: 'Tibbot');

  myPositionalAndOptionalArgumentFunction('USA', 555);
  myPositionalAndOptionalArgumentFunction('USA', 555, capitalCity: 'Tibbot');

  myNamedArgumentFunction(code: 666, countryName: 'USA');

  myNamedAndOptionalArgumentFunction(code: 666, countryName: 'Japan');
  myNamedAndOptionalArgumentFunction(
      code: 666, isLike: true, countryName: 'Japan');

  myNamedArgumentAndDefaultValueFunction(code: 888, countryName: 'BD');
  myNamedArgumentAndDefaultValueFunction(
      code: 888, countryName: 'BD', isLike: true);

  myNamedArgumentAndDefaultValueAndOptionalFunction(
      code: 999, isLike: true, countryName: 'ABC');
  myNamedArgumentAndDefaultValueAndOptionalFunction(
      code: 999,
      isLike: true,
      optional: 'This is Optional Value',
      countryName: 'ABC');
}

void myPositionalArgumentFunction(String countryName, int code) {
  print('Positional arguments and no return type  Function');
  print('Country Name: $countryName, Code: $code\n');
}

void myPositionalArgumentAndDefaultValueFunction(String countryName, int code,
    {String capitalCity = 'Kathmundu'}) {
  print('Positional arguments, no return type and default value Function');
  print(
      'Country Name: $countryName, Code: $code, Capital-City: $capitalCity\n');
}

void myPositionalAndOptionalArgumentFunction(String countryName, int code,
    {String? capitalCity}) {
  print('Positional and Optional arguments, no return type Function');
  print(
      'Country Name: $countryName, Code: $code, Capital-City: $capitalCity\n');
}

void myNamedArgumentFunction({required String countryName, required int code}) {
  print('Named/Non-Positional arguments and no return type  Function');
  print('Country Name: $countryName, Code: $code\n');
}

void myNamedAndOptionalArgumentFunction(
    {required String countryName, required int code, bool? isLike}) {
  print(
      'Named/Non-Positional and Optional arguments and no return type  Function');
  print('Country Name: $countryName, Code: $code, isLike: $isLike\n');
}

void myNamedArgumentAndDefaultValueFunction(
    {required String countryName, required int code, bool isLike = false}) {
  print(
      'Named/Non-Positional and Default value arguments and no return type  Function');
  print('Country Name: $countryName, Code: $code, isLike: $isLike\n');
}

void myNamedArgumentAndDefaultValueAndOptionalFunction({
  required String countryName,
  required int code,
  bool isLike = false,
  String? optional,
}) {
  print(
      'Named/Non-Positional and Default value and Optional arguments and no return type  Function');
  print(
      'Country Name: $countryName, Code: $code, isLike: $isLike, Optional: $optional\n');
}
