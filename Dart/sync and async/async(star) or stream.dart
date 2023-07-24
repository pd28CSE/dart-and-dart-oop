void main() async {
  print('main Start');

  await for (var data in getDataTwo()) {
    print(data);
  }
}

Stream<String> getDataOne(int range) async* {
  for (int i = 1; i < range; i++) {
    yield 'Index: $i';
    await Future<void>.delayed(const Duration(seconds: 1));
  }
}

Stream<String> getDataTwo() async* {
  for (int i = 10; i < 20; i++) {
    yield await Future<String>.delayed(
      const Duration(seconds: 1),
      () => 'Index: $i',
    );
  }
}
