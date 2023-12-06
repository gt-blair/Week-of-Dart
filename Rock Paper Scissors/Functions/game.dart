import 'dart:math';

String game(String player1) {
  String computer;
  Map<int, String> outcomes = {
    0: "Rock",
    1: "Paper",
    2: "Scissors",
  };
  computer = outcomes[Random().nextInt(outcomes.length)]!;

  // Comparing them in terms of 1 2 3
  Map<String, int> numberOutcomes = {"rock": 0, "paper": 1, "scissors": 2};

  String compLowerCase = computer.toLowerCase();
  String play1LowerCase = player1.toLowerCase();

  int compVal = numberOutcomes[compLowerCase]!;
  int playVal = numberOutcomes[play1LowerCase]!;

  if ((compVal - playVal == -1) | (compVal - playVal == 2)) {
    return "You won You chose $player1, Computer chose $computer";
  } else if ((compVal - playVal == 1) | (compVal - playVal == -2)) {
    return "You Lost Computer chose $computer, You chose $player1";
  } else {
    return "Its A Draw Computer chose $computer, You chose $player1";
  }
}
