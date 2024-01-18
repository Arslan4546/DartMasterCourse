import 'dart:io';

void main(List<String> args) {
  // Initialize a variable to store the total sum of numbers.
  int count = 0;

  // Continuously prompt the user to enter a number until they choose to quit.
  while (true) {
    // Ask the user if they agree to enter a number.
    print("Are you agree to enter a number?");
    print("If yes, type 'yes'; if not, type 'quit'");

    // Read the user's choice.
    String userChoice = stdin.readLineSync()!;

    // Check the user's choice.
    if (userChoice == "yes") {
      // If the user agrees, prompt them to enter a number and add it to the total sum.
      stdout.write("Please enter a number: ");
      int number = int.parse(stdin.readLineSync()!);
      count += number;
    } else if (userChoice == "quit") {
      // If the user chooses to quit, exit the loop.
      break;
    } else {
      // If the user enters an invalid choice, inform them.
      print("You entered an invalid choice.");
    }
  }

  // Display the total sum of the entered numbers.
  print("The total sum of your numbers is: $count");
}
