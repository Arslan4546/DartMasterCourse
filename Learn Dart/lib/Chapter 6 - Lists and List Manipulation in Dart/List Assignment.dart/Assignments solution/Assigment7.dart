// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list to store integers.
  List<int> myList = [];

  // Prompt the user to enter five elements of the list one by one.
  print("Enter your five elements of the list one by one:");

  // Use a for loop to take input one by one and add elements to the list.
  for (int i = 0; i < 5; i++) {
    // Read each element and add it to the list.
    int element = int.parse(stdin.readLineSync()!);
    myList.add(element);
  }

  // Print the elements of the list.
  print("The elements of the list are: $myList");

  // Find and print the index of the element '5' in the list.
  print("The index of the number that you entered is: ${myList.indexOf(5)}");
}
