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

  // Initialize a variable to count strings with a length greater than 5.
  int count = 0;

  // Use a for loop to iterate over the existing list.
  for (int i = 0; i <= myList.length - 1; i++) {
    // Store the current string in the variable 'result'.
    String result = myList[i].toString();

    // Check if the length of the string is greater than 5 and increment the count.
    if (result.length > 5) {
      count++;
    }
  }

  // Print the number of strings that have a length greater than 5.
  print("The number of strings with a length greater than 5 is: $count");
}
