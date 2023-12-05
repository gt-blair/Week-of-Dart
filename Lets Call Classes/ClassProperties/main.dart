import 'classes/classes.dart';

void main() {
  var car1 = Car("Rav4", "2022", 203, "Toyota", "Japan");

  car1.setMilage = 2000;

  print(
      "We own the ${car1.name} model ${car1.model} with ${car1.horsePower} horsepower made by ${car1.manufacturer} in ${car1.country}");

  print("${car1.getMilage} is the cars mileage");

  // Lets check in with the second constructor
  // The named constructor
  //var car2 = Car.common();

  // This code generates an error as late modeifier country is not initialized
  // We have to comment out the print block as an error at line 19 will prevent code execution
  // ...To other later blocks
  
  /*print(
      "Using the named constructor we have the following properties ${car2.name}, ${car2.manufacturer} and ${car2.country}");
  */
  
  //Multiline comments is achieved by /* */

  
  var car3 = Car.common(); // Fills manufacturer and name fields automatically
  car3.country = "Germany"; // Subaru could be German or not
  car3.setMilage = 4000;
  car3.horsePower = 300; // A lille horse power for our machine

  print("This is our car's details: \n"
      "Car Name: ${car3.name}\n"
      "Car Manufacturer: ${car3.manufacturer}\n"
      "Car Country: ${car3.country}\n"
      "Horse Power: ${car3.horsePower}\n"
      "Milage: ${car3.getMilage}");

}
