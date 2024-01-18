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

  // Print the original list.
  print("Your list is: $myList");

  // Create another list to store strings that start with 'a' or 'A'.
  List<String> containA = [];

  // Use a for loop to traverse the existing list.
  for (int i = 0; i <= myList.length - 1; i++) {
    // Store strings one by one into another container.
    String result = myList[i].toString();

    // Check if the string starts with 'a' or 'A' and add it to the new list.
    if (result.startsWith("a") || result.startsWith("A")) {
      containA.add(result);
    }
  }

  // Print the list containing only strings that start with 'a' or 'A'.
  print("Your list with strings starting with 'a' or 'A': $containA");
}
