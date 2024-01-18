// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Ask the user to enter an email address.
  stdout.write("Enter your email address: ");

  // Store the entered email address in the variable 'email'.
  String email = stdin.readLineSync()!;

  // Check if the '@' symbol is present in the email address.
  if (email.contains("@")) {
    // If true, print a message indicating that the email address is valid.
    print("Your email address $email is valid.");
  } else {
    // If false, print a message indicating that the email address is not valid.
    print("Your email address is not valid.");
  }
}
