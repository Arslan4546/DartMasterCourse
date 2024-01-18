import 'dart:io';
import 'dart:math';

void main() {
  // Initialize variables
  int totalScore = 0;
  final random = Random();

  // Game loop
  bool rollAgain = true;
  while (rollAgain) {
    // Roll the dice
    int diceRoll = random.nextInt(6) + 1;

    // Update total score
    totalScore += diceRoll;

    // Print the result
    print('You rolled a $diceRoll. Current total score: $totalScore');

    // Ask user if they want to roll again
    print('Do you want to roll again? (yes/no)');
    String input = '';
    while (input != 'yes' && input != 'no') {
      input = stdin.readLineSync()!.toLowerCase();
      if (input != 'yes' && input != 'no') {
        print('Invalid input. Please enter "yes" or "no".');
      }
    }

    // Update the loop condition based on user input
    rollAgain = (input == 'yes');
  }

  // Print the final total score
  print('Game over. Your final total score is: $totalScore');
}
