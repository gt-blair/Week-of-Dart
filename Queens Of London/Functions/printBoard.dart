void printBoard(List<List<int>> board) {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      print('${board[i][j]} ');
    }
    print('\n');
  }
}