import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a string.
  stdout.write("Enter your string:");

  // Read the user input.
  String yourString = stdin.readLineSync()!;

  // Initialize an empty string to store the reversed version.
  String reversed = "";

  // Initialize an index variable starting from the last character of the input string.
  int i = yourString.length - 1;

  // Iterate through each character in the string in reverse order.
  while (i >= 0) {
    // Append the current character to the reversed string.
    reversed += yourString[i];

    // Move to the previous character in the string.
    i--;
  }

  // Display the reversed string.
  print("Your reversed string is: ${reversed}");
}
