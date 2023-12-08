void main() {
  solveQueensProblem();
}

void solveQueensProblem() {
  List<List<int>> board = List.generate(8, (_) => List<int>.filled(8, 0));

  if (placeQueens(board, 0)) {
    printBoard(board);
  } else {
    print("No solution found.");
  }
}

bool placeQueens(List<List<int>> board, int row) {
  if (row == 8) {
    // All queens are placed successfully
    return true;
  }

  for (int col = 0; col < 8; col++) {
    if (isSafe(board, row, col)) {
      // Place queen if it's safe
      board[row][col] = 1;

      // Recur to place queens in the next row
      if (placeQueens(board, row + 1)) {
        return true;
      }

      // If placing the queen in the current position doesn't lead to a solution,
      // backtrack and try the next column
      board[row][col] = 0;
    }
  }

  // If no column is suitable in this row, backtrack to the previous row
  return false;
}

bool isSafe(List<List<int>> board, int row, int col) {
  // Check if no queen is present in the current row on the left side
  for (int i = 0; i < row; i++) {
    if (board[i][col] == 1) {
      return false;
    }
  }

  // Check upper diagonal on the left side
  for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) {
    if (board[i][j] == 1) {
      return false;
    }
  }

  // Check upper diagonal on the right side
  for (int i = row, j = col; i >= 0 && j < 8; i--, j++) {
    if (board[i][j] == 1) {
      return false;
    }
  }

  // If no conflicts are found, it's safe to place the queen
  return true;
}

void printBoard(List<List<int>> board) {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      print('${board[i][j]} ');
    }
    print('\n');
  }
}
