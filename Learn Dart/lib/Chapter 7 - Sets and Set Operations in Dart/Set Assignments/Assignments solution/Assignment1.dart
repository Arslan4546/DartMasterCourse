import 'dart:io';

void main(List<String> args) {
  // Taking the length of the first set
  stdout.write("Enter the length of the first set: ");
  int a = int.parse(stdin.readLineSync()!);

  // Taking the length of the second set
  stdout.write("Enter the length of the second set: ");
  int b = int.parse(stdin.readLineSync()!);

  // Initializing the first empty set
  Set set1 = {};

  // Initializing the second empty set
  Set set2 = {};

  // Print this message before adding elements to the first set
  print("Enter elements of set1 one by one:");

  // For loop for adding elements to the first set
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Add elements to the first set one by one
    set1.add(n);
  }

  // Print this message before adding elements to the second set
  print("Enter elements of set2 one by one:");

  // For loop for adding elements to the second set
  for (int i = 0; i < b; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Add elements to the second set one by one
    set2.add(n);
  }

  // Print the message before displaying both sets
  print("Your both sets are:");
  print("Set1: $set1");
  print("Set2: $set2");

  // Finding the common elements in both sets
  Set resultantSet = set1.intersection(set2);

  // Print the resultant set that contains the common elements
  print("The common elements in set1 and set2 are: $resultantSet");
}
