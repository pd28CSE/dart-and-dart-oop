class Mobile {
  String brandName;
  String model;
  int code;

  /// positional parameterize constructor
  Mobile(
      {required this.brandName, this.model = 'S20 Ultra', required this.code});

  /// Named constructor
  Mobile.namedConstructor(this.brandName, this.model, [this.code = 111]);

  void displayMobileDetails() {
    print("Brand name: $brandName.");
    print("Model: $model.");
    print("Code: $code");
  }
}

void main() {
  Mobile mobile1 = Mobile(brandName: "Samsung", code: 123, model: 'S20');
  mobile1.displayMobileDetails();

  Mobile mobile2 = Mobile(brandName: "Samsung", code: 123);
  mobile2.displayMobileDetails();

  Mobile mobile3 = Mobile.namedConstructor("Apple", "White");
  mobile3.displayMobileDetails();
}
