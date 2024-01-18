import 'dart:io';

void main(List<String> args) {
  // Initialize a counter to track the number of attempts.
  int count = 0;

  // The target number the user needs to reach.
  int targetNumber = 7;

  // Continuous loop to repeatedly prompt the user for input.
  while (true) {
    // Prompt the user to enter a number.
    stdout.write("Enter a number: ");
    int number = int.parse(stdin.readLineSync()!);

    // Check if the entered number is within a valid range (1 to 10).
    if (number > 0 && number <= 10) {
      // Check different conditions based on the entered number.
      if (number > 5 && number < 10) {
        // If the number is between 6 and 9 (inclusive), provide feedback and increment the attempt counter.
        print("Try again");
        count++;
      }
      if (targetNumber == number) {
        // If the entered number equals the target number, congratulate the user and exit the loop.
        print("GREAT! You reached your number.");
        break;
      }
      if (number >= 0 && number <= 5) {
        // If the number is between 0 and 5 (inclusive), provide feedback and increment the attempt counter.
        count++;
        print("Small");
      }
    } else {
      // If the entered number is not in the valid range, inform the user.
      print("You entered an invalid number!");
    }
  }

  // Display the number of attempts it took to reach the target number.
  print("You reached your number in ${count} attempts");
}
