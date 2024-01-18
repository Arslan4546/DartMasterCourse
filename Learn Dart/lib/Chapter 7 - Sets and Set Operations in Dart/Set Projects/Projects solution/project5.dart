import 'dart:io';

void main(List<String> args) {
  // Taking the length of a set
  stdout.write("Enter the length of a set: ");
  int a = int.parse(stdin.readLineSync()!);

  // Initializing an empty set
  Set<int> set = {};

  // Print this message before adding elements to the set
  print("Enter elements of the set one by one:");

  // Loop for adding elements to the set one by one
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Adding the elements to the set
    set.add(n);
  }

  // Print the set
  print("Your set is: $set");

  // Taking a number to check if it is present in the previous set
  stdout.write("Enter a value to check if it is present in the set: ");

  // Storing the entered number in the variable 'number'
  int number = int.parse(stdin.readLineSync()!);

  // Condition for checking if the number is present in the set
  if (set.contains(number)) {
    print("The number you entered is already present in your set.");
  } else {
    print("The number you entered is not present in your set.");
  }
}
