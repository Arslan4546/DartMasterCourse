// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter a string and read the input.
  stdout.write("Enter your string: ");
  String name = stdin.readLineSync()!;

  // Split the entered string into a list of words using space as the separator.
  List splitName = name.split(" ");

  // Initialize an empty string 'title' to store the transformed title case string.
  String title = "";

  // Iterate through the words in the splitName list.
  for (int i = 0; i <= splitName.length - 1; i++) {
    // Retrieve the current word from the list.
    String result = splitName[i];

    // Check if the current word is not empty.
    if (result.isNotEmpty) {
      // Convert the first character of the word to uppercase and the rest to lowercase.
      String upperC =
          result[0].toUpperCase() + result.substring(1).toLowerCase();

      // Append the transformed word to the 'title' string.
      title += upperC;

      // Add a space between words if it is not the last word.
      if (i < splitName.length - 1) {
        title += ' ';
      }
    }
  }

  // Print the resulting title case string.
  print("Title Case: $title");
}
