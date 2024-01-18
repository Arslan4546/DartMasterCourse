import 'dart:io';

void main(List<String> args) {
  // Initialize an empty map to store contacts
  Map myMap = {};

  // Continuous loop to interact with the user until 'return' is encountered
  while (true) {
    // Ask the user if they want to add contacts to the map
    print("Would you like to add contacts to the map?");
    print("If yes, type 'yes'; if no, type 'no'.");
    String userInput = stdin.readLineSync()!;

    // Process user input to add contacts
    if (userInput == "yes") {
      // Loop to add contacts; here, set to add 5 contacts, you can change the limit
      for (int i = 0; i < 5; i++) {
        // Prompt user for name and phone number
        print("Enter the name of the person:");
        String name = stdin.readLineSync()!;
        print("Enter the phone contact number of this person:");
        String phone = stdin.readLineSync()!;
        // Add the contact to the map
        myMap[name] = phone;
      }
    } else if (userInput == 'no') {
      // Skip addition if the user enters 'no'
      print("Addition skipped!");
    } else {
      // Inform the user about invalid input
      print("You entered an invalid option.");
    }

    // Ask the user if they want to show the contact of a person
    print("Would you like to show contact of a person?");
    print("If yes, type 'yes'; if no, type 'no'.");
    String userInput1 = stdin.readLineSync()!;

    // Process user input to show contact of a person
    if (userInput1 == "yes") {
      // Prompt user for the name of the person
      print("Enter the name of a person");
      String name = stdin.readLineSync()!;
      // Display the contact number of the person
      print("The contact number of the person is: ${myMap[name]}");
    } else if (userInput1 == 'no') {
      // Skip showing contact if the user enters 'no'
      print("Showing contact is skipped!");
    } else {
      // Inform the user about invalid input
      print("You entered an invalid option.");
    }

    // Ask the user if they want to show the phone book of all the contacts
    print("Would you like to show the phone book of all the contacts?");
    print("If yes, type 'yes'; if no, type 'no'.");
    String userInput2 = stdin.readLineSync()!;

    // Process user input to show the phone book
    if (userInput2 == "yes") {
      // Display the entire phone book
      print("Your phone book is:");
      print(myMap);
    } else if (userInput2 == 'no') {
      // Skip showing the phone book if the user enters 'no'
      print("Showing phone book is skipped!");
    } else {
      // Inform the user about invalid input
      print("You entered an invalid option.");
    }

    // Ask the user if they want to delete any contact
    print("Would you like to delete any contact?");
    print("If yes, type 'yes'; if no, type 'no'.");
    String userInput3 = stdin.readLineSync()!;

    // Process user input to delete a contact
    if (userInput3 == "yes") {
      // Prompt user for the name of the person to delete
      print("Enter the name of the person to delete from the phone book");
      String delete = stdin.readLineSync()!;
      // Remove the contact from the phone book
      myMap.remove(delete);
    }

    // Display the resultant phone book after user interactions
    print("Your resultant phone book is:");
    print(myMap);

    // Exit the program
    return;
  }
}
