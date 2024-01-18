import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the maximum range of the Fibonacci series: ");
  int number = int.parse(stdin.readLineSync()!);

  // Generate and print the Fibonacci sequence up to the specified number
  generateFibonacciSequence(number);
}

// Function to generate and print the Fibonacci sequence up to a given maximum number
void generateFibonacciSequence(int maxRange) {
  int firstTerm = 0;
  int secondTerm = 1;

  // Iterate through the Fibonacci sequence up to the specified maximum range
  while (firstTerm <= maxRange) {
    stdout.write('$firstTerm ');

    // Calculate the next term in the Fibonacci sequence
    int nextTerm = firstTerm + secondTerm;

    // Update firstTerm and secondTerm for the next iteration
    firstTerm = secondTerm;
    secondTerm = nextTerm;
  }
}
