import 'dart:io';

void main(List<String> args) {
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

  // Simply printing your list
  print("Your list is: $myList");

  // Converting your list into a unique set
  Set mySet = myList.toSet();

  // Printing your resultant set
  print("Your unique set is: $mySet");
}
