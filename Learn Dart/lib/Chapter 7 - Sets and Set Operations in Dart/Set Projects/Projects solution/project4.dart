import 'dart:io';

void main() {
  // Ask the user to enter the length of the password
  print("Enter the length of the password:");

  // Store the length into the variable 'length'
  int length = int.parse(stdin.readLineSync()!);

  // Print a message to enter the characters for the password
  print("Enter the characters to include in the password:");

  // Store the entered characters in the 'characters' variable
  String characters = stdin.readLineSync()!;

  // Split the characters into a list
  List myList = characters.split("");

  // Shuffle the characters in the list
  myList.shuffle();

  // Join the shuffled characters to form the final password
  String result = myList.join("");

  // Print the length of the entered characters
  print("Your length of password is: $length");

  // Print the final password
  print("Your final password is: $result");
}
