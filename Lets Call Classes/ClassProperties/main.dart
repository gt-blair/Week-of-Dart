import 'classes/classes.dart';

void main() {
  var car1 = Car("Rav4", "2022", 203, "Toyota", "Japan");

  car1.setMilage = 2000;

  print(
      "We own the ${car1.name} model ${car1.model} with ${car1.horsePower} horsepower made by ${car1.manufacturer} in ${car1.country}");
}
