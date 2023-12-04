import "dart:io";

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
