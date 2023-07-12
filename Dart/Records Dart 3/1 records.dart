void main() {
  var recors = (1, 'USA', 6.5, false);
  print(recors);
  print('${recors.$1},  ${recors.$2}\n');

  final (String, int) ab = ('ABC', 53);
  print('${ab.$2},  ${ab.$1}\n');

  final (String x, int y) xy = ('Japan', 11);
  print('${xy.$2},  ${xy.$1}\n');

  final (String x, int y) = ('XYZ', 44);
  print('${x},  ${y}\n');

  /// Named  Records
  ({int code, String name}) record;
  record = (name: 'Partho', code: 123);
  print('${record.name}, ${record.code}\n');

  final ({int x, bool y}) recordXY = (y: false, x: 10);
  print(recordXY.x);

  print(swapTwoNumber((10, 50.5)));
}

(double, int) swapTwoNumber((int, double) twoNumbers) {
  final (int a, double b) = twoNumbers;
  return (b, a);
}
