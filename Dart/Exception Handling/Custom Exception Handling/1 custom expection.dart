import './my_exception handling.dart';

void main() {
  try {
    checkPositiveNumber(5);
    print('Success');
  } on MyException catch (error) {
    print(error);
  } catch (error) {
    print(error);
  }
}

void checkPositiveNumber(int number) {
  if (number < 0) {
    throw MyException(
        'The number must be a positive number, but you give negative number.');
  } else {
    print('The Number is Positive : $number');
  }
}
