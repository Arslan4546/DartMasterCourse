import 'dart:io';

void main(List<String> args) {
  // Taking length of the first set
  stdout.write("Enter the length of the first set: ");
  int a = int.parse(stdin.readLineSync()!);

  // Taking the length of the second set
  stdout.write("Enter the length of the second set: ");
  int b = int.parse(stdin.readLineSync()!);

  // Initializing the first empty set
  Set<dynamic> set1 = {};

  // Initializing the second empty set
  Set<dynamic> set2 = {};

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
  print("Your set1 is: $set1");
  print("Your set2 is: $set2");

  // Use the intersection method for finding disjoint sets
  var disjoint = set1.intersection(set2);

  // Condition for finding disjoint sets
  if (disjoint.isEmpty) {
    print('Your sets are disjoint');
  } else {
    print('Your sets are not disjoint');
  }
}
