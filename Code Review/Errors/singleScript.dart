import 'dart:io';

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


void main() {
  print("How much do you want to withdraw?");
  String? amount = stdin.readLineSync();

  try {
    pastLimit(int.parse(amount!));
    print("Success. Withdrawn $amount.");
  } catch (e) {
    if (e is AmountExceptionCeil) {
      print(e.errorMessage());
    } else if (e is AmoutnExceptionNeg) {
      print(e.errorMessage());
    }
  }
}

class AmountExceptionCeil implements Exception {
  String errorMessage() {
    return "You cannot withdraw more than 70000";
  }
}

class AmoutnExceptionNeg implements Exception {
  String errorMessage() {
    return "You cannot withdraw less than 500";
  }
}

void pastLimit(int amount) {
  if (amount > 70000) {
    throw new AmountExceptionCeil();
  } else if (amount < 500) {
    throw new AmoutnExceptionNeg();
  }
}
