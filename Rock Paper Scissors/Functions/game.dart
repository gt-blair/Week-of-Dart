import 'dart:math';

String game(String player1) {
  String computer;
  Map<int, String> outcomes = {0: "Rock", 1: "Paper", 2: "Scissors",};
  computer = outcomes[Random().nextInt(outcomes.length)]!;

  // Comparing them in terms of 1 2 3
  Map<String, int> numberOutcomes = {"rock": 0, "paper": 1, "scissors": 2};

  if ((numberOutcomes[computer.toLowerCase()]! >
          numberOutcomes[player1.toLowerCase()]!) &
      (numberOutcomes[computer.toLowerCase()]! -
              numberOutcomes[player1.toLowerCase()]! ==
          1)) {
    return "Game Lost the Computer chose $computer, You chose $player1";
  } else {
    return "You won You chose $player1, Computer chose $computer";
  }
}
