import 'dart:io';

void main(List<String> args) {
  // Initialize a map to represent the shopping cart and a variable to track the total cost
  Map<String, int> shoppingCart = {};
  int totalCost = 0;

  // Infinite loop for the shopping cart system
  while (true) {
    // Display the main menu for the shopping cart system
    print("\nWELCOME TO SHOPPING CART SYSTEM:");
    print("1. Add products to the shopping cart.");
    print("2. Remove product from the shopping cart.");
    print("3. Calculate the total cost of your products.");
    print("4. Exit");

    // Read the user's choice
    int userChoice = int.parse(stdin.readLineSync()!);

    // Perform actions based on user's choice
    switch (userChoice) {
      case 1:
        // Add products to the shopping cart
        stdout.write("Enter the product name: ");
        String product = stdin.readLineSync()!;
        stdout.write("Enter the product price: ");
        int price = int.parse(stdin.readLineSync()!);
        shoppingCart[product] = price;
        break;

      case 2:
        // Remove product from the shopping cart
        if (shoppingCart.isNotEmpty) {
          stdout.write("Enter the product name you want to remove: ");
          String removeProduct = stdin.readLineSync()!;

          shoppingCart.remove(removeProduct);
          print("Your remaining shopping cart:");
          print(shoppingCart);
        } else {
          print("You don't have any product in your shopping cart.");
        }
        break;

      case 3:
        // Calculate the total cost of products in the shopping cart
        if (shoppingCart.isNotEmpty) {
          // Iterate through the shopping cart and calculate the total cost
          shoppingCart.forEach((key, value) {
            totalCost += value;
          });

          // Check if the total cost exceeds the daily shopping limit
          if (totalCost <= 10000) {
            print(
                "The total cost of your shopping products is: $totalCost Rs.");
          } else {
            print("Your daily shopping limit is 10000 Rs.");
            print("You have exceeded your shopping cost limit!");
            print(
                "Please enjoy your shopping within the remaining limit or remove high-cost products.");
          }
        } else {
          print("You don't have any product in your shopping cart.");
          print("Please add products to the shopping cart first.");
        }
        break;

      case 4:
        // Exit the program
        exit(0);

      default:
        // Invalid option
        print("You entered an invalid option.");
    }
  }
}
