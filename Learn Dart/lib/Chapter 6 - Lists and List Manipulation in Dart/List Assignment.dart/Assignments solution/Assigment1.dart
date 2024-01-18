// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list to store integers.
  List<int> myList = [];

  // Ask the user to enter the size of the list.
  stdout.write("Enter the size of the list: ");
  int size = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter random elements for the list one by one.
  print("Enter the elements of the list one by one:");
  for (int i = 0; i < size; i++) {
    // Read each element and add it to the list.
    int element = int.parse(stdin.readLineSync()!);
    myList.add(element);
  }

  // Print the generated list.
  print("The random list is: $myList");

  // Calculate the sum of all elements in the list using the 'fold()' method.
  int sumOfList = myList.fold(0, (first, next) => first + next);

  // Print the sum of the elements in the list.
  print("The sum of elements in the list is: $sumOfList");
}
