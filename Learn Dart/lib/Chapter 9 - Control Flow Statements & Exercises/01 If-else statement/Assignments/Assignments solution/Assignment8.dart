import 'dart:io';

void main(List<String> args) {
  // Creating an empty set to store numbers
  Set mySet = {};

  // Prompting the user to enter numbers into the set
  print("Enter numbers into your set one by one:");

  // Looping to get 4 numbers from the user
  for (int i = 0; i < 4; i++) {
    // Reading input from the user and adding it to the set
    int number = int.parse(stdin.readLineSync()!);
    mySet.add(number);
  }

  // Displaying the set containing unique numbers
  print("Your set: $mySet");
}
