// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter a double number and read the input.
  stdout.write("Enter your double number: ");
  double number = double.parse(stdin.readLineSync()!);

  // Round the entered double number to the nearest integer using the 'round' method.
  int roundedNumber = number.round();

  // Print the result after rounding the double number.
  print(roundedNumber);
}
