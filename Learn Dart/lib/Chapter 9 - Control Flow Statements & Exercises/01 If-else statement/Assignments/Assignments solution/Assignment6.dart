import 'dart:io';

void main() {
  // Creating an empty list to store item prices
  List<int> mylist = [];

  // Prompting the user to enter item prices
  print("Enter the item prices that you want to buy:");

  // Looping to get prices for 5 items
  for (int i = 0; i < 5; i++) {
    // Reading input from the user and adding it to the list
    int item = int.parse(stdin.readLineSync()!);
    mylist.add(item);
  }

  // Displaying the list of item prices
  print("Item prices: $mylist");

  // Calculating the total price of all items
  num sum = mylist.fold(0, (previousValue, element) => previousValue + element);
  print("The total price of all items: ${sum}");

  // Checking for discount eligibility
  if (sum > 100) {
    // Applying a 10% discount
    print("Your discount is 10%");
    double discount = sum * 0.1;
    double totalBill = sum - discount;
    print("Your bill after discount is: ${totalBill}");
  } else {
    // Not eligible for discount
    print("You are not eligible for a discount");
    print("Your bill is: ${sum}");
  }
}
