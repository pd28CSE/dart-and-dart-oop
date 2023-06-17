void main() {
  print("First Operation");
  Future.delayed(
    Duration(seconds: 1),
    () {
      print('Second Big Operation\n');
    },
  );
  print("Last Operation");

  printInfo();
  getName().then((value) => print(value));
  getFullName().then((value) => print(value));
  printNameAndFullName();
  printTotal();
  getMyFncData();
  checkValidity();
}

Future<void> printInfo() {
  return Future.delayed(
    const Duration(seconds: 2),
    () {
      print('Big Operation inside printInfo()\n');
    },
  );
}

Future<String> getName() {
  return Future.delayed(
    Duration(seconds: 3),
    () => 'Partho\n',
  );
}

Future<String> getFullName() async {
  return 'Partho Debnath';
}

void printNameAndFullName() async {
  String name = await getName();
  print('Name: $name');
  String fullName = await getFullName();
  print('Full Name : $fullName');
}

Future<void> printTotal() async {
  double sum = await getTotal();
  print('Total: $sum');
}

Future<double> getTotal() {
  return Future.delayed(
    const Duration(seconds: 4),
    () => 9.0 + 0.8,
  );
}

Future<void> getMyFncData() async {
  var data = await myFnc();

  print(data);
}

Future<String> myFnc() {
  return Future.delayed(Duration(seconds: 4), () => 'Hello World.\n');
}

void checkValidity() async {
  // String data = await isValidName('');
  // print(data);

  try {
    String data = await isValidName('Abc');
    print(data);
  } catch (error) {
    print(error);
  }
}

Future<String> isValidName(String name) {
  if (name.isEmpty == true) {
    throw Exception('Enter a Valid Name');
  } else {
    return Future.delayed(
      const Duration(seconds: 5),
      () {
        return '$name is a valid name';
      },
    );
  }
}
