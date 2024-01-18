import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter the length of the password
  stdout.write("Enter the length of your password:");
  int length = int.parse(stdin.readLineSync()!);

  // Define a collection of characters to use in generating the password
  String collection = "Aqwert@#%^&*()SDFGWERTY";

  // Initialize an empty string to store the generated password
  String password = "";

  // Iterate through the characters in the collection
  for (int i = 0; i < collection.length; i++) {
    // Append the current character to the password
    password += collection[i];

    // Move to the next character (skip one character in each iteration)
    i++;

    // Check if the password has reached the desired length
    if (password.length == length) {
      // If the length is reached, exit the loop
      break;
    }
  }

  // Print the generated password
  print("Your generated password is: $password");
}
