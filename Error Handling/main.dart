import "dart:io";

import "checkValidInput.dart";

void main() {
  print("How much do you want to withdraw?");
  String? amount = stdin.readLineSync();
  print(checkValidInput(amount));
}
