import "dart:io";

import "checkValidInput.dart";

void main() {
  print("How much do you want to withdraw?");
  String? amount = stdin.readLineSync();

  try {
    pastLimit(int.parse(amount!));
  } catch (e) {
    if (e is AmountException) {
      print(e.errorMessage());
    } else {
      print("An unexpected error occurred: $e");
    }
  }
}

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
