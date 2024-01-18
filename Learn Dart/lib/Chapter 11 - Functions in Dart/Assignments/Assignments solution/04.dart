import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Calculate and print the factorial of the input number
  calculateFactorial(number);
}

// Function to calculate the factorial of a given number
void calculateFactorial(int n) {
  int factorial = 1;

  // Iterate from n down to 1 to calculate the factorial
  for (int i = n; i > 0; i--) {
    factorial *= i;
  }

  // Print the calculated factorial
  print("The factorial for the number $n is: $factorial");
}
