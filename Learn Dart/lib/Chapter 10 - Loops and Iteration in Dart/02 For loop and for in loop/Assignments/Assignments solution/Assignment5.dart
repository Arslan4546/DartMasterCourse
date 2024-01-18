import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number
  stdout.write("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  // Initialize a variable to store the factorial, starting with 1
  int factorial = 1;

  // Iterate through the numbers from 1 to the entered number
  for (int i = 1; i <= number; i++) {
    // Calculate the factorial by multiplying the current number with the running product
    factorial = factorial * i;
  }

  // Print the factorial of the entered number
  print(factorial);
}
