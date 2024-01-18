import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number
  stdout.write("Enter a number:");
  String number = stdin.readLineSync()!;

  // Initialize an empty string to store the reversed version of the number
  String palindrome = "";

  // Iterate through the characters of the input number in reverse order
  for (int i = number.length - 1; i >= 0; i--) {
    // Append the current character to the reversed string
    palindrome += number[i];
  }

  // Check if the reversed string is equal to the original number
  if (palindrome == number) {
    // If equal, print that the number is a palindrome
    print("Your number is a palindrome");
  } else {
    // If not equal, print that the number is not a palindrome
    print("Your number is not a palindrome");
  }
}
