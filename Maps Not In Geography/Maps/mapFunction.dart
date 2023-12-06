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
