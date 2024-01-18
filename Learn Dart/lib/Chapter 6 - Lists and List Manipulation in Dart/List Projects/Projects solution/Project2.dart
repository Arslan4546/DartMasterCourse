// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Create an empty list called shoppingList to store items.
  List shoppingList = [];

  // Prompt the user to enter items in the shopping list one by one.
  print("ENTER YOUR SHOPPING LIST:");

  // Use a for loop to add items to the shopping list.
  for (int i = 0; i < 5; i++) {
    String n = stdin.readLineSync()!;
    shoppingList.add(n);
  }

  // Print the list of all items in the shopping list.
  print("YOUR SHOPPING LIST IS :${shoppingList}");

  // Sort the shopping list.
  shoppingList.sort();
  print("YOUR SORTED SHOPPING LIST IS :${shoppingList}");

  // Prompt the user to enter an item to check if it exists in the list.
  print("ENTER YOUR ITEM TO CHECK IF IT EXISTS:");
  String item = stdin.readLineSync()!;

  // Check if the item exists in the shopping list and print the result.
  if (shoppingList.contains(item)) {
    print("YOUR ITEM EXISTS IN THE LIST");
  } else {
    print("YOUR ITEM DOES NOT EXIST IN THE LIST");
  }

  // Prompt the user to enter an item to delete from the shopping list.
  print("ENTER YOUR ITEM THAT YOU WANT TO DELETE:");
  String deleteItem = stdin.readLineSync()!;

  // Remove the specified item from the shopping list.
  shoppingList.remove(deleteItem);

  // Print the remaining list after deleting the specified item.
  print(
      "YOUR REMAINING LIST AFTER DELETING THE SPECIFIC ITEM :${shoppingList}");

  // Prompt the user to enter an item to add to the shopping list.
  print("ENTER YOUR ITEM THAT YOU WANT TO ADD TO THE LIST:");
  String addItem = stdin.readLineSync()!;

  // Add the specified item to the shopping list.
  shoppingList.add(addItem);

  // Print the final shopping list after adding one more item.
  print("YOUR LIST AFTER ADDING ONE MORE ITEM :${shoppingList}");
}
