import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a string
  stdout.write("Enter your string:");
  String myString = stdin.readLineSync()!;

  // Initialize an empty string to store the reversed version of the input string
  String reversed = "";

  // Iterate through the characters of the input string in reverse order
  for (int i = myString.length - 1; i >= 0; i--) {
    // Append the current character to the reversed string
    reversed += myString[i];
  }

  // Print the reversed string
  print("Your reverse string is: $reversed");
}
