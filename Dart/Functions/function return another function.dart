void main() {
  Function getfnc = getFunction();
  getfnc();

  Function getFncValue = getFunctionValue(100);
  print(getFncValue());

  Function(double) sum = getFunctionValue1(200);
  print(sum(9.8));
}

void Function() getFunction() {
  print('getFunction() is called.');
  return () {
    print('This is return by getFunction()');
  };
}

int Function() getFunctionValue(int a) {
  return () {
    print('This is a function is return by getFunctionValue()');
    return a;
  };
}

double Function(double) getFunctionValue1(int a) {
  return (double x) {
    print('This is a function is return by getFunctionValue()');
    return x + a;
  };
}
