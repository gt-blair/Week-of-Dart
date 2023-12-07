bool isSafe(List<List<int>> board, int col, int row) {
  // Check for queens to the left
  // Row is constant
  // Value of column changes
  for (int i = 0; i < col; i++) {
    if (board[i][row] == 1) {
      return false;
    }
  }

  // Check for queens to the right
  // Row is constant
  // Value of column changes
  for (int i = 7; i > col; i--) {
    if (board[i][row] == 1) {
      return false;
    }
  }

  // Check for queens to the bottom
  // Column is Constant
  // Row changes
  for (int i = 0; i < row; i++) {
    if (board[col][i] == 1) {
      return false;
    }
  }

  // Check for queens to the top
  // Column is Constant
  // Row changes
  for (int i = 7; i > row; i--) {
    if (board[col][i] == 1) {
      return false;
    }
  }
}
