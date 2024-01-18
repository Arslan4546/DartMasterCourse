import 'dart:io';

void main(List<String> args) {
  // Ask the user to enter any word
  stdout.write("Enter a word: ");

  // Store the entered word in the 'word' variable
  String word = stdin.readLineSync()!;

  // Initialize an empty variable to store the reverse of the word
  String checkPalindrome = '';

  // For loop for traversing over the characters of the entered word
  for (int i = word.length - 1; i >= 0; i--) {
    // Add each character to the 'checkPalindrome' variable in reverse order
    checkPalindrome += word[i];
  }

  // Check if the reversed word is equal to the original word
  if (checkPalindrome == word) {
    print('Your word "${word}" is a palindrome.');
  } else {
    print('Your word "${word}" is not a palindrome.');
  }
}
