abstract class Vehicle {
  /// Abstract method
  void start();

  /// Abstract method
  void stop();

  void fnc() {
    print('From Vehicle class fnc function');
  }
}

class Car extends Vehicle {
  /// Implementation of start()
  @override
  void start() {
    print('Car started');
  }

  /// Implementation of stop()
  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  /// Implementation of start()
  @override
  void start() {
    print('Bike started');
  }

  /// Implementation of stop()
  @override
  void stop() {
    print('Bike stopped');
  }

  @override
  void fnc() {
    print('From Bike class fnc function. Running..');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.fnc();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.fnc();
  bike.stop();
}
