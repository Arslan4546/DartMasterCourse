// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter the comparison number and read the input.
  stdout.write("Enter your comparison number: ");
  int comparisonNumber = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the minimum number and read the input.
  stdout.write("Enter your min number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the maximum number and read the input.
  stdout.write("Enter your max number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  // Use the 'clamp' method to limit the comparison number within the specified range.
  int result = comparisonNumber.clamp(num1, num2);

  // Print the result after clamping the comparison number.
  print(result);
}
