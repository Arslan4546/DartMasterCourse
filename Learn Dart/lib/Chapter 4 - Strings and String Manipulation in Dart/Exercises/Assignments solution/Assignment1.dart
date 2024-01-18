// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter a palindrome word and read the input.
  stdout.write("Enter your palindrome word that comes to your mind: ");
  String palindrome = stdin.readLineSync()!;

  // Initialize an empty string to store the reversed version of the palindrome.
  String reversedString = "";

  // Iterate through the characters of the palindrome in reverse order.
  for (int i = palindrome.length - 1; i >= 0; i--) {
    // Build the reversed string by appending characters in reverse order.
    reversedString += palindrome[i];
  }

  // Check if the reversed string is equal to the original palindrome.
  if (reversedString == palindrome) {
    // If true, print a message indicating that the word is a palindrome.
    print("$palindrome is a palindrome.");
  } else {
    // If false, print a message indicating that the word is not a palindrome.
    print("$palindrome is not a palindrome.");
  }
}
