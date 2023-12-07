import 'placeQueens.dart';

void solveQueens() {
  // generate function generates a list with n values i.e. 8
  // List fill fills n positions with m i.e. 8 positions with 0
  // We have an 8 * 8 grid with 0 being all the value
  List<List<int>> board = List.generate(8, (_) => List.filled(8, 0));

  if (placeQueens(board, 0)) {
    print(board);
  } else {
    print("No solution found");
  }
}
