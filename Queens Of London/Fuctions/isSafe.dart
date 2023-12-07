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

  // Check for queens to the top-left diagonal
  // Column decreases by 1
  // Row increases by 1
  for (int i = row, j = col; i <= 7 && j >= 0; i++, j--) {
    if (board[col][row] == 1) {
      return false;
    }
  }

  // Check for queens to the top-right diagonal
  // Column inrease by 1
  // Row increases by 1
  for (int i = row, j = col; i <= 7 && j <= 7; i++, j++) {
    if (board[col][row] == 1) {
      return false;
    }
  }

  // Check for queens to the bottom-left diagonal
  // Column decrease by 1
  // Row decrease by 1
  for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) {
    if (board[col][row] == 1) {
      return false;
    }
  }

  // Check for queens to the bottom-right diagonal
  // Column increase by 1
  // Row decrease by 1
  for (int i = row, j = col; i >= 0 && j <= 7; i--, j++) {
    if (board[col][row] == 1) {
      return false;
    }
  }

}
