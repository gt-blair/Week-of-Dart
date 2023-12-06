import 'dart:io';

import 'Functions/game.dart';

void main() {
  print("Lets play");
  print("Rock, Paper or Scissors");
  String guess = stdin.readLineSync()!;
  print(game(guess));
}
