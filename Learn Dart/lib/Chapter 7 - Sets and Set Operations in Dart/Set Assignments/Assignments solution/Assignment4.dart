import 'dart:io';

void main(List<String> args) {
  // Declaring the list
  List list = [1, 2, 3, 3, 4, 4, 5];

  // Print the original list
  print("Your list is: $list");

  // Print the list after removing duplicate elements using a Set
  print("Your remaining list after removing duplicates: ${list.toSet()}");

  // Take the length of your list
  stdout.write("Enter the length of your list: ");

  // Store the length of the list in the variable 'a'
  int a = int.parse(stdin.readLineSync()!);

  // Initializing an empty list
  List<int> myList = [];

  // For loop for storing the elements in the list one by one
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Adding the elements to the list one by one
    myList.add(n);
  }

  // Print the original list entered by the user
  print("Your list is: $myList");

  // Print the list of unique elements by converting it to a Set
  print("Your list of unique elements is: ${myList.toSet()}");
}
