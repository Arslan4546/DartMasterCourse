// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Ask the user to enter a string.
  stdout.write("Enter your string: ");

  // Store the entered string in the variable 'yourString'.
  String yourString = stdin.readLineSync()!;

  // Initialize a variable 'myString' to store the reversed version of 'yourString'.
  String myString = "";

  // Iterate through the characters of 'yourString' in reverse order.
  for (int i = yourString.length - 1; i >= 0; i--) {
    // Build the reversed string 'myString' by appending characters in reverse order.
    myString += yourString[i];
  }

  // Check if the reversed string is equal to the original string.
  if (myString == yourString) {
    // If true, print a message indicating that the string is a palindrome.
    print("Your string is a palindrome.");
  } else {
    // If false, print a message indicating that the string is not a palindrome.
    print("Your string is not a palindrome.");
  }
}
