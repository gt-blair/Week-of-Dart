class Car {
  //Lets look at some properties of a car
  late String name;
  late String model;
  late int horsePower;
  late String manufacturer;
  late String country;
  late int km;

  Car(this.name, this.model, this.horsePower, this.manufacturer, this.country);

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
