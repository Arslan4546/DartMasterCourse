// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter a number and read the input.
  stdout.write("Enter your number: ");

  // Parse the entered input as an integer and store it in the variable 'a'.
  int a = int.parse(stdin.readLineSync()!);

  // Increment the entered number by 5.
  a += 5;

  // Print the result of the incremented number.
  print(a);
}
