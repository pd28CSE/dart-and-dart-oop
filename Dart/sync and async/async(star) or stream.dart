void main() async {
  print('main Start');

  await for (var data in getDataOne(10)) {
    print(data);
  }

  print('main End');
}

Stream<String> getDataOne(int range) async* {
  print('---Start getDataOne(10)---');
  for (int i = 1; i < range; i++) {
    yield 'Index: $i';
    await Future<void>.delayed(const Duration(seconds: 1));
  }
  print('---End getDataOne(10)---');
}

Stream<String> getDataTwo() async* {
  for (int i = 10; i < 20; i++) {
    yield await Future<String>.delayed(
      const Duration(seconds: 1),
      () => 'Index: $i',
    );
  }
}
