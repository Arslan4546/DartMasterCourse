import 'dart:io';

void main(List<String> args) {
  // Initialize an empty map to store products and their quantities
  Map inventory = {};

  // Ask the user if they want to add products
  print("Would you like to add the products?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput = stdin.readLineSync()!;

  // Process user input to add products
  if (userInput == "yes") {
    for (int i = 0; i < 5; i++) {
      // Prompt user for product name
      print("Enter product name:");
      String product = stdin.readLineSync()!;

      // Prompt user for product quantity
      print("Enter the product quantity:");
      int quantity = int.parse(stdin.readLineSync()!);

      // Update the inventory with the product and its quantity
      inventory[product] = quantity;
    }
  } else if (userInput == "no") {
    // Skip addition of products if the user enters 'no'
    print("Addition of product operation is skipped!");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice.");
  }

  // Ask the user if they want to access a product
  print("Would you like to access the product?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput1 = stdin.readLineSync()!;

  // Process user input to access a product
  if (userInput1 == "yes") {
    // Prompt user for the name of the product
    print("Enter the name of your product:");
    String productName = stdin.readLineSync()!;

    // Display the quantity of the specified product
    print("The quantity of your product is: ${inventory[productName]}");
  } else if (userInput1 == "no") {
    // Skip accessing the product if the user enters 'no'
    print("Accessing the operation is skipped!");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice.");
  }

  // Ask the user if they want to update the quantity of a specific product
  print("Would you like to update the quantity of a specific product?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput2 = stdin.readLineSync()!;

  // Process user input to update the quantity of a specific product
  if (userInput2 == "yes") {
    // Prompt user for the name of the product to update
    print("Enter the product name to update its quantity:");
    String productName = stdin.readLineSync()!;

    // Prompt user for the updated quantity
    int productQuantity = int.parse(stdin.readLineSync()!);

    // Update the inventory with the updated quantity for the specified product
    inventory[productName] = productQuantity;

    // Inform the user that the update is successful
    print("You have updated the quantity of your specific product.");
  } else if (userInput2 == "no") {
    // Skip updating product quantity if the user enters 'no'
    print("Updating product quantity operation is skipped!");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice.");
  }

  // Ask the user if they want to delete a specific product
  print("Would you like to delete a specific product?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput3 = stdin.readLineSync()!;

  // Process user input to delete a specific product
  if (userInput3 == "yes") {
    // Prompt user for the name of the product to delete
    print("Enter the name of your product:");
    String productName = stdin.readLineSync()!;

    // Remove the specified product from the inventory
    inventory.remove(productName);

    // Inform the user that the deletion is successful
    print("You have deleted your specific product from the product list.");
  } else if (userInput3 == "no") {
    // Skip deleting a product if the user enters 'no'
    print("Deletion operation is skipped!");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice.");
  }

  // Display the final list of products and their quantities
  print("Your final list of your products and their quantities is:");
  print(inventory);
}
