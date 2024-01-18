import 'dart:io';

void main(List<String> args) {
  // Create a list to store the Fibonacci sequence
  List fibonacciSequence = [];

  // Ask the user to enter a number to create the Fibonacci sequence up to that number
  stdout.write(
      "Enter a number to create the Fibonacci sequence up to this number: ");

  // Store the user-entered number
  int number = int.parse(stdin.readLineSync()!);

  // Condition to insert 0 in the sequence at first
  if (number > 0) {
    fibonacciSequence.add(0);
  }

  // Another condition to insert 1 in the sequence
  if (number > 1) {
    fibonacciSequence.add(1);
  }

  // For loop for inserting more elements in the Fibonacci sequence
  for (int i = 2; i < number; i++) {
    // Add elements to the Fibonacci sequence one by one
    fibonacciSequence.add(fibonacciSequence[i - 1] + fibonacciSequence[i - 2]);

    // Condition to break the loop if the sequence reaches the entered number
    if (fibonacciSequence[fibonacciSequence.length - 1] == number) {
      // If condition is met, break out of the loop
      break;
    }
  }

  // Print the Fibonacci sequence up to the entered number
  print("Your Fibonacci sequence is: $fibonacciSequence");
}
