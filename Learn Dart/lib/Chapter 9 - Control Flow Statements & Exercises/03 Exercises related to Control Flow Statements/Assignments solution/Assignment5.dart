import 'dart:io';

void main(List<String> args) {
  // Initializing a random number
  int? number = 45;

  // Asking the user to enter a number
  stdout.write("Please guess a number: ");

  // Store the user-entered number in the variable 'a'
  int a = int.parse(stdin.readLineSync()!);

  // Conditions to check the relationship between the guessed number and the random number
  if (a >= 50 && a <= 100) {
    print("Too high");
  } else if (a >= 0 && a <= 40) {
    print("Too low");
  } else if (a <= 44 && a >= 40) {
    print("Low");
    // Condition if the guessed number is close to the correct number
  } else if (a >= 46 && a <= 50) {
    print("High");
  } else if (a == number) {
    // Condition if the guessed number matches the random number
    print("You guessed the correct number!");
  } else {
    // Condition for an invalid number
    print("Invalid number");
  }
}
