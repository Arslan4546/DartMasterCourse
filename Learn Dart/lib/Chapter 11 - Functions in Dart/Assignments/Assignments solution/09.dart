import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your string here: ");
  String forwardString = stdin.readLineSync()!;

  // Call the function to reverse the entered string
  reversedString(forwardString);
}

// Function to reverse a given string
void reversedString(String string) {
  String reversedString = "";

  // Iterate through the characters of the string in reverse order
  for (int i = string.length - 1; i >= 0; i--) {
    // Concatenate each character to the reversedString
    reversedString += string[i];
  }

  // Print the reversed string
  print("The reversed string is: $reversedString");
}
