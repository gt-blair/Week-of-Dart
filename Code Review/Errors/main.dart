import 'dart:io';

class WithdrawalValidator {
  static String validateAmount(String? amount) {
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
}

class WithdrawalException implements Exception {
  final String errorMessage;

  WithdrawalException(this.errorMessage);

  @override
  String toString() {
    return errorMessage;
  }
}

void main() {
  print("How much do you want to withdraw?");
  String? amount = stdin.readLineSync();

  try {
    validateWithdrawal(int.parse(amount!));
    print("Success. Withdrawn $amount.");
  } catch (e) {
    if (e is WithdrawalException) {
      print(e);
    }
  }
}

void validateWithdrawal(int amount) {
  if (amount > 70000) {
    throw WithdrawalException("You cannot withdraw more than 70000");
  } else if (amount < 500) {
    throw WithdrawalException("You cannot withdraw less than 500");
  }
}
