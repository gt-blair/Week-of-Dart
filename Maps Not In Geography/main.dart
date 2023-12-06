import 'dart:io';

import 'Maps/mapFunction.dart';

void main() {
  List<int> numberGroup = [1, 4, 9, 16, 25];

  // Lets try squaring the numbers
  List<int> squaring = squaringNumbers(numberGroup);
  print(squaring);

  // Lets try our square root function
  List<int> squareroot = squarerooting(numberGroup);
  print(squareroot);

  print("To which continent is our next destination? ");
  String continent = stdin.readLineSync()!;
  try {
    String city = locations[continent.toLowerCase()]!;
    String surpriseCity = randomVacation();
    print(
        "Hooray our next stop is in ${formatNames(city)}, ${formatNames(continent)}");
    print("Surprise we will go through $surpriseCity... on the House");
  } catch (e) {
    // Another option is to call the catch exception with stacktrace
    print("Wowza! That's not a continent...");
  }
}
