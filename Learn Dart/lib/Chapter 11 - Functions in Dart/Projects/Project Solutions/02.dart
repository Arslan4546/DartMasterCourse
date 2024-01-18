import 'dart:io';

void main(List<String> args) {
  // Get user's initial expense input
  stdout.write("Enter your total expense:");
  int expense = int.parse(stdin.readLineSync()!);

  // Create a map to store expense entries
  Map entryMap = {};
  int count = 0;
  while (true) {
    // Display menu options to the user
    print("\n1. Add expenses");
    print("2. Calculate individual shares");
    print("3. Display expense summary");
    print("4. Exit");
    print('\nPlease choose your option');

    // Get user input for menu selection
    int userInput = int.parse(stdin.readLineSync()!);

    // Perform actions based on user input
    if (userInput == 1) {
      // Option 1: Add expenses
      addingExpense(entryMap, count);
    } else if (userInput == 2) {
      // Option 2: Calculate individual shares
      individualShares(entryMap, expense);
    } else if (userInput == 3) {
      // Option 3: Display expense summary
      expenseSummary(entryMap, expense, count);
    } else if (userInput == 4) {
      // Option 4: Exit the program
      exit(0);
    } else {
      // Invalid input
      print("Invalid input");
    }
  }
}

// Function to add expenses to the map
void addingExpense(Map addMap, int count) {
  print("Please add 4 expenses by name:");
  for (int i = 1; i <= 4; i++) {
    // Get expense name from the user
    stdout.write('Enter your expense name:');
    String exp = stdin.readLineSync()!;

    // Get expense amount from the user
    stdout.write("Enter your expense amount:");
    int amount = int.parse(stdin.readLineSync()!);
    count += amount;
    // Add expense to the map
    addMap[exp] = amount;
  }

  print("Your expenses have been successfully added!");
}

// Function to calculate and display individual shares
void individualShares(Map individual, int individualPercentage) {
  if (individual.isNotEmpty) {
    print("Your individual percentage section is here!");
    individual.forEach((key, value) {
      // Calculate and print individual percentage for each expense
      double percentage = value / individualPercentage * 100;
      print("${key}: ${percentage}%");
    });
  } else {
    // No expense entries
    print("You don't have any expense summary");
  }
}

// Function to display overall expense summary
void expenseSummary(Map expenseMap, int expense, int count) {
  if (expenseMap.isNotEmpty) {
    // Display total expense amount
    print("Your total expense is ${expense}");

    // Display expense amount by expense name
    print("Your expense amount by expense name:");
    expenseMap.forEach((key, value) {
      print("${key}: ${value}");
    });

    // Calculate and display the remaining debt
    int debt = expense - count;
    print("Your remaining debt is: ${debt}");
  } else {
    // No expense entries
    print("You don't have any expense summary");
  }
}
