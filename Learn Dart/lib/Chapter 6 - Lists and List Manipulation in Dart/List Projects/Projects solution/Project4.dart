import 'dart:io';

void main(List<String> args) {
  // Create an empty list to store the Fibonacci sequence.
  List<dynamic> fibonacciSequence = [];

  // Ask the user to enter the size of the list.
  stdout.write("ENTER THE SIZE OF YOUR LIST :");

  // Store the length in the variable 'a'.
  int a = int.parse(stdin.readLineSync()!);

  // If 'a' is greater than 0, add 0 to the list.
  if (a > 0) {
    fibonacciSequence.add(0);
  }

  // If 'a' is greater than 1, add 1 to the list.
  if (a > 1) {
    fibonacciSequence.add(1);
  }

  // Use a for loop to enter the remaining Fibonacci sequence items in the list.
  for (int i = 2; i < a; i++) {
    // Add Fibonacci items to the list one by one.
    fibonacciSequence.add(fibonacciSequence[i - 1] + fibonacciSequence[i - 2]);
  }

  // Print out the Fibonacci list.
  print("THE FIBONACCI LIST OF LENGTH ${a}:${fibonacciSequence}");

  // Find the sum of the Fibonacci sequence list.
  num sumOfFibonacci =
      fibonacciSequence.fold(0, (previous, next) => previous + next);

  // Print the sum of the Fibonacci sequence list.
  print("THE SUM OF FIBONACCI SEQUENCE LIST IS :${sumOfFibonacci}");

  // Find the maximum value in the Fibonacci sequence list.
  print(
      "THE MAXIMUM VALUE IN THE FIBONACCI SEQUENCE LIST IS :${fibonacciSequence[fibonacciSequence.length - 1]}");

  // Find the minimum value in the Fibonacci sequence list.
  print("THE MINIMUM VALUE IN THE FIBONACCI LIST IS :${fibonacciSequence[0]}");

  // Sort the Fibonacci sequence list.
  fibonacciSequence.sort();

  // Print the sorted Fibonacci sequence list.
  print("THE SORTED FIBONACCI SEQUENCE LIST IS :${fibonacciSequence}");

  // Print the final Fibonacci sequence list.
  print("THE FINAL FIBONACCI SEQUENCE LIST IS :${fibonacciSequence}");
}
