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

  // Print the sets before displaying both sets
  print("Your set1 is: $set1");
  print("Your set2 is: $set2");

  // Checking conditions of subset and superset
  if (set1.containsAll(set2)) {
    // Print the result if set2 is a subset of set1
    print("set2 is a subset of set1");

    // Also print if set1 is a superset of set2
    print("set1 is a superset of set2");
  } else {
    // Print the result given by the else condition
    print("Neither subset nor superset");
  }
}
