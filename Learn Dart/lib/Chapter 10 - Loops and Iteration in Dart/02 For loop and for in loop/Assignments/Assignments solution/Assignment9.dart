import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a string
  stdout.write("Enter your string:");
  String string = stdin.readLineSync()!;

  // Initialize a list to store ASCII values of characters
  List<int> codeUnits = [];

  // Iterate through each character of the input string
  for (int i = 0; i < string.length; i++) {
    // Get the ASCII value of the current character and add it to the list
    codeUnits.addAll(string[i].codeUnits);
  }

  // Print the ASCII values of the characters in the entered string
  print("The ASCII values of your string are: $codeUnits");
}
