abstract class Vehicle {
  String carName;
  Vehicle({required this.carName});

  /// Abstract method
  void start();

  /// Abstract method
  void stop();

  void fnc() {
    print('From Vehicle class fnc function');
  }
}

class Car extends Vehicle {
  int numberOfDroor;
  Car({required String carNumber, required this.numberOfDroor})
      : super(carName: carNumber);

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

class Bike extends Vehicle {
  Bike({required String bikeName}) : super(carName: bikeName);

  /// Implementation of start()
  @override
  void start() {
    print('Bike started. Brand Name: $carName');
  }

  /// Implementation of stop()
  @override
  void stop() {
    print('Bike stopped');
  }

  @override
  void fnc() {
    print('From Bike class fnc function. Running.. Speed: 800 KMH');
  }
}

void main() {
  Car car = Car(carNumber: 'BMW', numberOfDroor: 2);
  car.start();
  car.fnc();
  car.stop();

  Bike bike = Bike(bikeName: 'BHW');
  bike.start();
  bike.fnc();
  bike.stop();
}
