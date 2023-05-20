abstract class Vehicle {
  String carName;
  Vehicle({required this.carName}) {
    print('Vehicle Abstract Class Constructor');
  }

  /// Abstract method
  void start() {
    print('Car start. car Name: $carName');
  }

  /// Abstract method
  void stop();

  void fnc() {
    print('From Vehicle class fnc function');
  }
}

class Car implements Vehicle {
  late String carName;
  int numberOfDroor;
  Car({required String myCarName, required this.numberOfDroor}) {
    print('Car Class Constructor');

    carName = myCarName;
  }

  /// Implementation of start()
  @override
  void start() {
    print('Car started. Brand Name: $carName. Doors : $numberOfDroor');
  }

  /// Implementation of stop()
  @override
  void stop() {
    print('Car stopped');
  }

  @override
  void fnc() {
    print('From Car class fnc function. Running.. Speed: 500 KMH');
  }
}

void main() {
  Car car = Car(myCarName: 'BMW', numberOfDroor: 4);
  car.start();
  car.fnc();
  car.stop();
}
