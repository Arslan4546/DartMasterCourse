import 'dart:io';

void main(List<String> args) {
  // Taking the length of a set
  stdout.write("Enter the length of a set: ");
  int a = int.parse(stdin.readLineSync()!);

  // Initializing an empty set
  Set<int> set = {};

  // Print this message before adding elements to a set
  print("Enter elements of the set one by one:");

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Adding elements to the set one by one
    set.add(n);
  }

  // Simply printing the set
  print("Your set is: $set");

  // Converting set to list
  List myList = set.toList();

  // Suppose the first element is larger
  int max = myList[0];

  // For loop for traversing the whole list
  for (int i = 1; i < myList.length; i++) {
    // Condition to find the maximum value
    if (myList[i] > max) {
      max = myList[i];
    }
  }

  // Print the maximum value
  print("The maximum value in your set is: $max");

  // Suppose the first element is smaller
  int min = myList[0];

  // For loop for traversing the whole list
  for (int i = 1; i < myList.length; i++) {
    // Condition to find the minimum value
    if (myList[i] < min) {
      min = myList[i];
    }
  }

  // Print the minimum value
  print("The minimum value in your set is: $min");
}
