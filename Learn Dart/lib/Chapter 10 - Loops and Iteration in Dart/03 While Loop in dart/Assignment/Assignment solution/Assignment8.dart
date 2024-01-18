import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number.
  stdout.write("Enter your number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Initialize a variable to store the factorial of the number.
  int factorial = 1;

  // Initialize a loop counter.
  int i = 1;

  // Calculate the factorial of the entered number using a while loop.
  while (i <= number) {
    // Multiply the current factorial by the loop counter.
    factorial = factorial * i;

    // Increment the loop counter.
    i++;
  }

  // Display the calculated factorial of the entered number.
  print("The factorial of $number is: $factorial");
}
