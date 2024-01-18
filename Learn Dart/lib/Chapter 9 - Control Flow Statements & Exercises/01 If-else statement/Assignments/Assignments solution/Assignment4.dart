import 'dart:io';

void main() {
  // Display the menu list
  print("Your menu list");
  print("1. Burger");
  print("2. Pizza");
  print("3. Sandwich");
  print("4. Pasta");

  // Prompt the user to enter their choice
  print("Enter a number of your choice (1 to 4)");
  int choice = int.parse(stdin.readLineSync()!);

  // Check the user's choice and display the selected item
  if (choice == 1) {
    print("You selected Burger");
  } else if (choice == 2) {
    print("You selected Pizza");
  } else if (choice == 3) {
    print("You selected Sandwich");
  } else if (choice == 4) {
    print("You selected Pasta");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice");
  }
}
