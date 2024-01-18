import 'dart:io';

void main() {
  // List to store expense records as maps
  List<Map<String, dynamic>> expenses = [];

  // Infinite loop for the main menu
  while (true) {
    // Display the Expense Tracker Menu
    print("Expense Tracker Menu:");
    print("1. Add Expense");
    print("2. Display Total Expenses by Category");
    print("3. Search Expenses by Date Range");
    print("4. Delete Expense");
    print("5. Exit");

    // Read user's choice
    var choice = int.parse(stdin.readLineSync()!);

    // Switch statement to handle different menu options
    switch (choice) {
      case 1:
        // Option to add a new expense
        print("Enter expense description: ");
        var description = stdin.readLineSync()!;
        print("Enter expense amount: ");
        var amount = double.parse(stdin.readLineSync()!);
        print("Enter expense category: ");
        var category = stdin.readLineSync()!;

        // Add the expense as a map to the expenses list
        expenses.add({
          "description": description,
          "amount": amount,
          "category": category,
        });

        // Display success message
        print("Expense added successfully!");
        break;

      case 2:
        // Option to display total expenses by category
        Map<String, double> categories = {};
        for (var expense in expenses) {
          categories[expense["category"]] =
              (categories[expense["category"]] ?? 0) + expense["amount"];
        }

        // Display total expenses for each category
        for (var category in categories.keys) {
          print("Total expenses for $category: ${categories[category]}");
        }
        break;

      case 3:
        // Option to search expenses by date range
        print("Enter start date (YYYY-MM-DD): ");
        var startDate = stdin.readLineSync()!;
        print("Enter end date (YYYY-MM-DD): ");
        var endDate = stdin.readLineSync()!;

        // Filter expenses within the specified date range
        var filteredExpenses = expenses
            .where((expense) =>
                startDate.compareTo(expense["date"]) <= 0 &&
                endDate.compareTo(expense["date"]) >= 0)
            .toList();

        // Display filtered expenses
        print("Expenses within the date range:");
        filteredExpenses.forEach((expense) {
          print(
              "${expense['description']} - ${expense['amount']} - ${expense['category']}");
        });
        break;

      case 4:
        // Option to delete an expense
        print("Enter the description of the expense to delete: ");
        var expenseToDelete = stdin.readLineSync()!;

        // Find the matching expense and remove it
        var matchingExpenses = expenses
            .where((expense) => expense["description"] == expenseToDelete)
            .toList();

        if (matchingExpenses.isNotEmpty) {
          expenses.remove(matchingExpenses[0]);
          print("Expense deleted successfully!");
        } else {
          print("Expense not found.");
        }
        break;

      case 5:
        // Option to exit the program
        print("Exiting Expense Tracker. Goodbye!");
        return;

      default:
        // Handle invalid choices
        print("Invalid choice. Please enter a number between 1 and 5.");
        break;
    }
  }
}
