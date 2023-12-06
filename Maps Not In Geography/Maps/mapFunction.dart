List<int> squaringNumbers(List<int> numberList) {
  // A .map function iterates through elements of an iterable and perform a function to each
  // For our example want to square
  List<int> squaredNumbers =
      numberList.map((int element) => element * element).toList();
  return squaredNumbers;
}

List<int> squarerooting(List<int> numberList) {
  List<int> squareRooted = numberList.map((int element) {
    int number = 0;
    // A while loop that will increament the value of number
    // On the last increment before turning in false in condition
    // We get the square root
    // Same approach can be used in finding root 3
    while (number * number != element) {
      number = number + 1;
    }
    return number;
  }).toList();
  return squareRooted;
}

// Lets have ourselves a Map
// We have implemented lower case so as to easily identify it with userInput
// We are formatting our userInput too too lower alphabets
Map<String, String> locations = {
  "north america": "Montreal",
  "south america": "Machu Picchu",
  "asia": "Dubai",
  "antarctica": "Ross Island",
  "europe": "Malta",
  "africa": "Nairobi",
  "aceania": "Melbourne"
};

String formatNames(String name) {
  String result = "";
  // Sadly we cannot use map in string but you know what we can do...
  // FOR can work for us u1f61c :
  // result = name.map()
  for (int i = 1; i < name.length; i++) {
    result = result + name[i].toLowerCase();
  }
  return name[0].toUpperCase() + result;
}
