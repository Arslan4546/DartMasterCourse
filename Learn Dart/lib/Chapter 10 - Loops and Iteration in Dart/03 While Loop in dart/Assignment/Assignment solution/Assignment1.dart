import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a word.
  print(
      "Enter your word containing uppercase, lowercase, and other characters:");

  // Read the user input.
  String word = stdin.readLineSync()!;

  // Initialize counters for different types of characters.
  int countUppercase = 0;
  int countLowercase = 0;
  int countNumbers = 0;
  int countSpecialcharacters = 0;

  // Check if the entered word is not empty.
  if (word.isNotEmpty) {
    // Initialize an index variable for the loop.
    int i = 0;

    // Iterate through each character in the word.
    while (i < word.length) {
      // Check if the character is an uppercase letter.
      if (word[i] == word[i].toUpperCase() &&
          word[i] != word[i].toLowerCase()) {
        countUppercase++;
      }
      // Check if the character is a lowercase letter.
      else if (word[i] == word[i].toLowerCase() &&
          word[i] != word[i].toUpperCase()) {
        countLowercase++;
      }
      // Check if the character is a special character.
      else if ("!#%^&*?@,.||#".contains(word[i])) {
        countSpecialcharacters++;
      }
      // Check if the character is a number.
      else if ("0123456789".contains(word[i])) {
        countNumbers++;
      }
      // If the character doesn't fall into any category, it's considered invalid.
      else {
        print("Invalid character: ${word[i]}");
      }

      // Move to the next character in the word.
      i++;
    }
  }
  // If the word is empty, inform the user.
  else {
    print('String is empty');
  }

  // Display the counts of different types of characters.
  print("Your word contains ${countUppercase} uppercase character(s)");
  print("Your word contains ${countLowercase} lowercase character(s)");
  print("Your word contains ${countSpecialcharacters} special character(s)");
  print("Your word contains ${countNumbers} number(s)");
}
