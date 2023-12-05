class Car {
  //Lets look at some properties of a car
  late String name;
  late String model;
  late int horsePower;
  late String manufacturer;
  late String country;
  late int km;

  //This is a class constructor
  Car(this.name, this.model, this.horsePower, this.manufacturer, this.country);

  // Say most of our cars(we have plenty) are Subarus
  // We can use this named class constructor common is used interchangeably with
  // default
  Car.common() {
    name = "Subaru";
    manufacturer = "Subaru";
  }

  void startCar() {
    print("$name is starting vrooooooom");
  }

  void stopCar() {
    print("$name is stopping");
  }

  bool drivable() => true;

  set setMilage(int value) => km = value;
  get getMilage => km;
}
