// Write a program that prints the Fibonacci series up to a given number using a for loop. The program should take the input number from the user.

import 'dart:io';

void main() {
  // Prompt the user to enter the maximum number for the Fibonacci series
  stdout.write('Enter the maximum number for Fibonacci series: ');
  int maxNumber = int.parse(stdin.readLineSync()!);

  // Initialize the first two terms of the Fibonacci series
  int firstTerm = 0, secondTerm = 1;

  // Print a message indicating the range of the Fibonacci series
  print('\nFibonacci Series up to $maxNumber:');

  // Loop to generate and print Fibonacci series up to the specified maximum number
  for (int i = firstTerm; firstTerm <= maxNumber; i++) {
    // Print the current term of the Fibonacci series
    stdout.write('$firstTerm ');

    // Calculate the next term in the Fibonacci series
    int nextTerm = firstTerm + secondTerm;

    // Update the first and second terms for the next iteration
    firstTerm = secondTerm;
    secondTerm = nextTerm;
  }

  // Print a newline after the Fibonacci series is printed
  print("");
}
