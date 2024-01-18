import 'dart:io';

void main(List<String> args) {
  // Continuous loop to repeatedly prompt the user for input.
  while (true) {
    // A fixed target number for comparison.
    int targetNumber = 43;

    // Prompt the user to enter a number.
    stdout.write("Enter a number: ");
    int number = int.parse(stdin.readLineSync()!);

    // Check if the entered number is within a valid range (0 to 100).
    if (number <= 100 && number >= 0) {
      // Check different ranges and provide feedback based on the entered number.
      if (number >= 90) {
        print("Too high");
      } else if (number >= 80) {
        print("Too high");
      } else if (number >= 70) {
        print("Too high");
      } else if (number >= 60) {
        print("Too high");
      } else if (number >= 50) {
        print("Too high");
      } else if (number >= 40) {
        // Special case for the range 40-49.
        if (number >= 45) {
          print("Too high");
        } else if (number > 40) {
          print("Try again");
        } else if (number == targetNumber) {
          print("GREAT! You reached your number");
        }
      } else if (number >= 30) {
        print("Too low");
      } else if (number >= 20) {
        print("Too low");
      } else if (number >= 10) {
        print("Too low");
      } else {
        print("Too low");
      }
    } else {
      // If the entered number is not in the valid range, inform the user.
      print("You entered an invalid number!");
    }
  }
}
