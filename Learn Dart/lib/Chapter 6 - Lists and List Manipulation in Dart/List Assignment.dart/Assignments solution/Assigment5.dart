// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list to store integers.
  List<int> myList = [];

  // Initialize a variable 'count' to keep track of the number of input elements.
  int count = 0;

  // Prompt the user to enter elements for the list one by one.
  print("Enter your elements of the list one by one:");

  // Use a for loop to iterate through five times (as specified).
  for (int i = 0; i < 5; i++) {
    // Increment the count for each index.
    count++;

    // Read each element and add it to the list.
    int element = int.parse(stdin.readLineSync()!);
    myList.add(element);
  }

  // Print the elements of the list.
  print("The elements of the list are: $myList");

  // Calculate the sum of all elements in the list using the 'fold()' method.
  int sumOfList = myList.fold(0, (first, next) => first + next);

  // Calculate and print the average of all elements.
  print("Average is: ${sumOfList / count}");
}
