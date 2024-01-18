import 'dart:io';

void main(List<String> args) {
  // Ask the user to enter a number
  stdout.write("Enter a number: ");

  // Store the user-entered number in the variable 'number'
  int number = int.parse(stdin.readLineSync()!);

  // Initialize the variable 'factorial' for finding the factorial
  int factorial = 1;

  // For loop for calculating the factorial
  for (int i = 1; i <= number; i++) {
    // Multiply the current value of 'factorial' by the current loop variable 'i'
    factorial = factorial * i;
  }

  // Print the final result, which is the factorial of the entered number
  print("The factorial of $number is: $factorial");
}
