// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list to store strings.
  List<String?> myList = [];

  // Prompt the user to enter strings in the list.
  print("Enter your strings in the list:");

  // Use a for loop to insert strings into the list one by one.
  for (int i = 0; i < 5; i++) {
    // Read each string and add it to the list.
    String? userInput = stdin.readLineSync();
    myList.add(userInput);
  }

  // Sort the list of strings.
  myList.sort();

  // Print the final sorted list of strings.
  print("After sorting, your final list is: $myList");
}
