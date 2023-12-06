import 'Maps/mapFunction.dart';

void main() {
  List<int> numberGroup = [1, 4, 9, 16, 25];

  // Lets try squaring the numbers
  List<int> squaring = squaringNumbers(numberGroup);
  print(squaring);

  // Lets try our square root function
  List<int> squareroot = squarerooting(numberGroup);
  print(squareroot);
}
