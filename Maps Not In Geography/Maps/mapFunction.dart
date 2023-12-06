List<int> squaringNumbers(List<int> numberList) {
  // A .map function iterates through elements of an iterable and perform a function to each
  // For our example want to square
  List<int> squaredNumbers =
      numberList.map((int element) => element * element).toList();
  return squaredNumbers;
}
