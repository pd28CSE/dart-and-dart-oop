class Mobile {
  String? brandName;
  String? model;
  int? code;

  /// positional parameterize constructor
  Mobile(this.brandName, this.model, this.code);

  /// Named constructor
  Mobile.namedConstructor(this.brandName, this.model, [this.code = 111]);

  void displayMobileDetails() {
    print("Brand name: $brandName.");
    print("Model: $model.");
    print("Code: $code");
  }
}

void main() {
  Mobile mobile1 = Mobile("Samsung", "S20", 123);
  mobile1.displayMobileDetails();

  Mobile mobile2 = Mobile.namedConstructor("Apple", "White");
  mobile2.displayMobileDetails();
}
