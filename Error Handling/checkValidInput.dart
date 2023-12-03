String checkValidInput(String? amount) {
  if (amount != null) {
    try {
      int amountInt = int.parse(amount);
      return "You have deposited $amountInt";
    } catch (e) {
      return "Invalid input";
    }
  } else {
    return "No input provided, Enter a valid amount";
  }
}
