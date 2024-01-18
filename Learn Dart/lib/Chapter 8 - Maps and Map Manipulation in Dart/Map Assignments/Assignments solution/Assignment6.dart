import 'dart:io';

void main(List<String> args) {
  // Initializing a map of two items
  Map<String, dynamic> myMap = {"Bag": 4500, "Shoes": 8900};

  // Print a message to the user
  print("Your items in your cart are:");

  // Print the map that you created
  print(myMap);

  // Show a message to the user
  print("Would you like to 'add' one more item.");

  // Ask the user for their choice
  print("If yes, then type 'yes'; if no, then type 'no'.");

  // Store the user's choice into this variable
  String userinput = stdin.readLineSync()!;

  // Condition based on the user's choice
  if (userinput == "yes") {
    // Ask the user to insert the name of the item
    print("Insert your 'item' name and 'price':");

    // Input the item name
    String item = stdin.readLineSync()!;

    // Input the price of that item
    int price = int.parse(stdin.readLineSync()!);

    // Adding that item into your map
    myMap[item] = price;
  }

  // Ask the user for their choice to remove any element
  print("Would you like to 'remove' any item from your cart.");

  // Ask the user to input their choice
  print("If yes, then type 'yes'; if not, then type 'not'.");

  // Store the user's input into the variable
  String userinput1 = stdin.readLineSync()!;

  // Condition to match user's choice
  if (userinput1 == 'yes') {
    // Print a message to the user
    print("Enter the name of 'item' which you want to 'remove'.");

    // Input the name of the item
    String itemName = stdin.readLineSync()!;

    // Removing this item from the map
    myMap.remove(itemName);
  }

  // Initialize the variable to count the values of your items
  num total = 0;

  // For-each loop for iterating over the whole values of our map
  myMap.forEach((key, value) {
    // Adding each item's value into the total variable
    total += value;
  });

  // Print your cart before counting the price of all the items
  print(myMap);

  // Print the total price of your items in the cart
  print("The total 'price' of your items is: $total");
}
