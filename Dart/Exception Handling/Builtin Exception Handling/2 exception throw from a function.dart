void main() {
  try {
    vote(17);
  } catch (error) {
    print('Error : $error');
  }

  try {
    double x = divided(10, 10);
    print(x);
  } catch (error) {
    print('Error : $error');
  }

  try {
    fnc(1);
  } on UnsupportedError catch (error) {
    print('Error: $error');
  } on FormatException {
    print('Format Exception Occurs.');
  } catch (error) {
    print('Error : $error');
  } finally {
    print('finally alloways execute.');
  }
}

void vote(int age) {
  if (age < 1) {
    throw Exception('Age cannot be negative.');
  }
  print('Vote complete');
}

double divided(double num1, double num2) {
  if (num2 == 0) {
    throw Exception('Can not divide by Zero.');
  }

  return num1 / num2;
}

void fnc(int x) {
  if (x == 1) {
    throw UnsupportedError('This function is not supported.');
  } else if (x == 2) {
    throw FormatException('Integer Zero Exception.');
  } else {
    throw Exception('This my Exception.');
  }
}
