import 'isSafe.dart';

bool placeQueens(List<List<int>> board, int row) {
  if (row == 8) {
    // Checks when all queens are placed correctly
    return true;
  }

  for (int col = 0; col <= 7; col++) {
    if (isSafe(board, col, row)) {
      // if its safe it places a queen
      board[col][row] = 1;

      // It then recurses to the next row maintaining the column
      if (placeQueens(board, row + 1)) {
        return true;
      }
      //Backtracking resetting the value at the position as 0
      board[col][row] = 0;
    }
  }
  return false;
}
