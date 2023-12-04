class AmountException implements Exception {
  String errorMessage() {
    return "You cannot withdraw more than 70000";
  }
}

void pastLimit(int amount) {
  if (amount > 70000) {
    throw new AmountException();
  }
}
