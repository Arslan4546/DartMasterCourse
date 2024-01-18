// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list to store integers.
  List<int> myList = [];

  // Prompt the user to enter the size of the list.
  stdout.write("Enter the size of your list: ");
  int size = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter elements of the list one by one.
  print("Enter your elements of the list one by one:");
  for (int i = 0; i < size; i++) {
    // Read each element and add it to the list.
    int element = int.parse(stdin.readLineSync()!);
    myList.add(element);
  }

  // Print the original list.
  print("Your list is: $myList");

  // Remove negative integers from the list using the 'removeWhere' method.
  myList.removeWhere((element) => element.isNegative);

  // Print the updated list after removing negative integers.
  print("After removing negative integers, your updated list is: $myList");
}
