// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Ask the user to enter a string.
  stdout.write("Enter your string: ");

  // Store the entered string in the variable 'name'.
  String name = stdin.readLineSync()!;

  // Initialize an empty string 'result' to store the reversed version of 'name'.
  String result = "";

  // Traverse the string in reverse order and store each character in 'result'.
  for (int i = name.length - 1; i >= 0; i--) {
    result += name[i];
  }

  // Get the code units of each character in the reversed string.
  var codeUnits = result.codeUnits;

  // Initialize an empty string 'string' to store the result with added symbols.
  String string = "";

  // Iterate through the code units and add '#' symbol before each element.
  for (int i = 0; i < codeUnits.length - 1; i++) {
    string += "#";
    string += codeUnits[i].toString();
  }

  // Add '#' symbol at the end of the string.
  String finalString = string + "#";

  // Print the final result.
  print(finalString);
}
