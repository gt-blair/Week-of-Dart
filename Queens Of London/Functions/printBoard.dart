void printBoard(List<List<int>> board) {
  for (int i = 0; i <= 7; i++) {
    for (int j = 0; j <= 7; j++) {
      print("${board[i][j]} ");
    }
    print("\n");
  }
}
