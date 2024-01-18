// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create the first empty list to store integers.
  List<int> firstList = [];

  // Ask the user to enter the size of the first list.
  stdout.write("Enter the size of the first list: ");
  int sizeFirstList = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter elements for the first list one by one.
  print("Enter the elements of the first list one by one:");
  for (int i = 0; i < sizeFirstList; i++) {
    // Read each element and add it to the first list.
    int element = int.parse(stdin.readLineSync()!);
    firstList.add(element);
  }

  // Print the first list.
  print("Your first list is: $firstList");

  // Create the second empty list to store integers.
  List<int> secondList = [];

  // Ask the user to enter the size of the second list.
  stdout.write("Enter the size of the second list: ");
  int sizeSecondList = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter elements for the second list one by one.
  print("Enter the elements of the second list one by one:");
  for (int i = 0; i < sizeSecondList; i++) {
    // Read each element and add it to the second list.
    int element = int.parse(stdin.readLineSync()!);
    secondList.add(element);
  }

  // Print the second list.
  print("Your second list is: $secondList");

  // Merge the first and second lists into a new list.
  List<int> finalList = [...firstList, ...secondList];
  print("Your final list is: $finalList");

  // Remove duplicates from the final list by converting it to a set and then back to a list.
  List<int> noDuplicateList = finalList.toSet().toList();
  print("Your final list after removing duplicates is: $noDuplicateList");
}
