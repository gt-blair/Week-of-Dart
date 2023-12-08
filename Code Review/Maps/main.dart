import 'dart:math';
import 'dart:io';

List<int> squareNumbers(List<int> numberList) {
  return numberList.map((int element) => element * element).toList();
}

List<int> squareRoot(List<int> numberList) {
  return numberList.map((int element) {
    int number = 0;
    while (number * number != element) {
      number = number + 1;
    }
    return number;
  }).toList();
}

Map<String, String> locations = {
  "north america": "Montreal",
  "south america": "Machu Picchu",
  "asia": "Dubai",
  "antarctica": "Ross Island",
  "europe": "Malta",
  "africa": "Nairobi",
  "oceania": "Melbourne"
};

String formatNames(String name) {
  return name[0].toUpperCase() + name.substring(1).toLowerCase();
}

String randomVacation() {
  Map<int, String> location = {
    1: "Costa Rica",
    2: "Grand Canyon",
    3: "Maldives",
    4: "Lisbon",
    5: "New Orleans",
    6: "Paris",
    7: "Tahiti",
    8: "London",
    9: "Sydney",
    10: "Bali",
    11: "Barcelona"
  };
  int randomNumber = Random().nextInt(location.length) + 1;
  return location[randomNumber]!;
}

void main() {
  List<int> numberGroup = [1, 4, 9, 16, 25];

  List<int> squared = squareNumbers(numberGroup);
  print(squared);

  List<int> squareRooted = squareRoot(numberGroup);
  print(squareRooted);

  print("To which continent is our next destination? ");
  String continent = stdin.readLineSync()!;
  try {
    String city = locations[continent.toLowerCase()]!;
    String formattedCity = formatNames(city);
    String formattedContinent = formatNames(continent);
    print("Hooray, our next stop is in $formattedCity, $formattedContinent");
    print("Surprise! We will go through ${randomVacation()}... on the house");
  } catch (e) {
    print("Wowza! That's not a continent...");
  }
}
