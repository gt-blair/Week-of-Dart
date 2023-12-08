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
    if (board[j][i] == 1) {
      return false;
    }
  }

  // Check for queens to the top-right diagonal
  // Column inrease by 1
  // Row increases by 1
  for (int i = row, j = col; i <= 7 && j <= 7; i++, j++) {
    if (board[j][i] == 1) {
      return false;
    }
  }

  // Check for queens to the bottom-left diagonal
  // Column decrease by 1
  // Row decrease by 1
  for (int i = row, j = col; i >= 0 && j >= 0; i--, j--) {
    if (board[j][i] == 1) {
      return false;
    }
  }

  // Check for queens to the bottom-right diagonal
  // Column increase by 1
  // Row decrease by 1
  for (int i = row, j = col; i >= 0 && j <= 7; i--, j++) {
    if (board[j][i] == 1) {
      return false;
    }
  }

  // If no conflicts are found its safe to place the queen
  return true;
}

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

void printBoard(List<List<int>> board) {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      print('${board[i][j]} ');
    }
    print('\n');
  }
}

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

void main() {
  solveQueens();
}
