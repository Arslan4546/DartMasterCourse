// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter a string and read the input.
  stdout.write("Enter your string: ");
  String name = stdin.readLineSync()!;

  // Convert the entered string to lowercase to make the vowel check case-insensitive.
  name = name.toLowerCase();

  // Initialize a variable 'count' to keep track of the number of vowels in the string.
  int count = 0;

  // Iterate through the characters of the string.
  for (int i = 0; i < name.length; i++) {
    // Check if the current character is a vowel ('a', 'e', 'i', 'o', 'u').
    if ('a,e,i,o,u'.contains(name[i])) {
      // If true, increment the vowel count.
      count++;
    }
  }

  // Print the total count of vowels in the entered string.
  print("Number of vowels: $count");
}
