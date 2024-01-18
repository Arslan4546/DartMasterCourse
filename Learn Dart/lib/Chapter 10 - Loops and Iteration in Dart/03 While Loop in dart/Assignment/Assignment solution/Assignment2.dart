import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a string.
  stdout.write("Enter your string:");

  // Read the user input.
  String yourString = stdin.readLineSync()!;

  // Initialize a counter to store the length of the string.
  int count = 0;

  // Initialize an index variable for the loop.
  int i = 0;

  // Iterate through each character in the string.
  while (i < yourString.length) {
    // Increment the counter for each character.
    count++;

    // Move to the next character in the string.
    i++;
  }

  // Display the length of the entered string.
  print("The length of your string is: ${count}");
}
