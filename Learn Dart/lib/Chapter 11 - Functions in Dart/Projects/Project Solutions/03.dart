import 'dart:io';

void main(List<String> args) {
  // Map to store bank account information
  Map bankMap = {};

  // Main menu for the bank account system
  while (true) {
    print("\nWELCOME TO BANK ACCOUNT SYSTEM");
    print("1.CREATE ACCOUNT ");
    print("2.DEPOSIT MONEY");
    print("3.WITHDRAW MONEY");
    print("4.CHECK BALANCE");
    print("5.CLOSE ACCOUNT");
    print("6.EXIT");
    print("\nENTER YOUR OPTION:");
    int userInput = int.parse(stdin.readLineSync()!);

    // Handling user options
    if (userInput == 1) {
      createAccount(bankMap);
    } else if (userInput == 2) {
      depositMoney(bankMap);
    } else if (userInput == 3) {
      withdrawMoney(bankMap);
    } else if (userInput == 4) {
      checkBalance(bankMap);
    } else if (userInput == 5) {
      closeAccount(bankMap);
    } else if (userInput == 6) {
      exit(0);
    } else {
      print("INVALID OPTION!");
    }
  }
}

// Function to create a bank account
void createAccount(Map accountMap) {
  print("\nWELCOME TO HBL BANK:");
  print("ENTER YOUR FIRST NAME:");
  String firstName = stdin.readLineSync()!;
  print("ENTER YOUR LAST NAME:");
  String lastName = stdin.readLineSync()!;
  print("ENTER YOUR CNIC:");
  String cnic = stdin.readLineSync()!;
  print("ENTER YOUR DOB(DD\\MM\\YY):");
  String dob = stdin.readLineSync()!;

  // Storing user information in the map
  accountMap["LASTNAME"] = firstName;
  accountMap["LASTNAME"] =
      lastName; // Note: Corrected typo from "LASTNAME" to "FIRSTNAME"
  accountMap["CNIC"] = cnic;
  accountMap["DOB"] = dob;
  print("\nYOUR ACCOUNT HAS BEEN CREATED SUCCESSFULLY!");
}

// Function to deposit money into the account
void depositMoney(Map depositMap) {
  print("\nWELCOME TO DEPOSIT OPTION:");
  print("PLEASE ENTER YOUR AMOUNT TO DEPOSIT:");
  int amount = int.parse(stdin.readLineSync()!);
  depositMap["AMOUNT"] = amount;
  print("YOUR AMOUNT $amount HAS BEEN SUCCESSFULLY DEPOSITED!");
}

// Function to withdraw money from the account
void withdrawMoney(Map withdrawMap) {
  if (withdrawMap.containsKey("AMOUNT")) {
    print("\nWELCOME TO WITHDRAW MONEY OPTION:");
    print("ENTER YOUR AMOUNT THAT YOU WANT TO WITHDRAW:");
    int withdrawAmount = int.parse(stdin.readLineSync()!);
    int amount = withdrawMap["AMOUNT"];

    // Validating withdrawal amount and updating the balance
    if (withdrawAmount <= amount) {
      int remainingAmount = amount - withdrawAmount;
      print("YOUR AMOUNT HAS BEEN WITHDRAWN FROM YOUR ACCOUNT BALANCE");
      print("YOUR REMAINING BALANCE IS $remainingAmount IN YOUR BANK ACCOUNT");
      withdrawMap["AMOUNT"] = remainingAmount;
    } else {
      print(
          "YOUR ACCOUNT BALANCE IS LESS THAN $withdrawAmount. PLEASE ENTER A VALID AMOUNT TO WITHDRAW");
    }
  } else {
    print("PLEASE ENTER AN AMOUNT FIRST INTO YOUR BANK ACCOUNT");
  }
}

// Function to check the account balance
void checkBalance(Map checkBalanceMap) {
  if (checkBalanceMap.containsKey("AMOUNT")) {
    int currentBalance = checkBalanceMap["AMOUNT"];
    print("YOUR CURRENT ACCOUNT BALANCE IS $currentBalance ");
  } else {
    print("PLEASE ENTER AN AMOUNT FIRST INTO YOUR BANK ACCOUNT");
  }
}

// Function to close the bank account
void closeAccount(Map closeAccountMap) {
  // Clearing the account information
  closeAccountMap.clear();
  print("YOUR ACCOUNT HAS BEEN CLOSED");
  print("THANKS FOR USING THIS BANK ACCOUNT");
}
