void main() {
  double? x;
  try {
    x = double.parse('3.1416s');
    print(x);
  } catch (error) {
    print('Error : $error');
  } finally {
    print('always execute');
  }

  try {
    int a = 12 ~/ 0;
    print(a);
  } on UnsupportedError {
    print('Integer Division By Zero Exception.');
  } on FormatException {
    print('Format Exception.');
  } catch (error) {
    print('Error : $error');
  } finally {
    print('always execute');
  }
}
