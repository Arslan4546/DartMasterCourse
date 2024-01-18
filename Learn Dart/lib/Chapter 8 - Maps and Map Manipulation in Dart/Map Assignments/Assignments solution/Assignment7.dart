import 'dart:io';

void main(List<String> args) {
  // Initializing a library of books
  Map<String, int> library = {
    "Mathematics": 1,
    "Urdu": 2,
    "English": 3,
    "Islamiat": 4,
    "Computer": 5,
    "Arabic": 6,
    "Pak Study": 7,
    "Programming Fundamental": 8
  };

  // Print a message to the user
  print("Your books library is here!");

  // Printing the books library
  print(library);

  // Create an empty catalog for borrowing books from the library
  Map<String, int> catalog = {};

  // For loop for adding books from the library to the catalog
  for (int i = 0; i < library.length - 1; i++) {
    // Show this message to the user every time
    print("Would you like to add books to your catalog?");
    print("If yes, then type 'yes'; if no, then type 'no'.");

    // Store the user choice into this variable
    String userInput = stdin.readLineSync()!;

    // Condition if the user's choice matches
    if (userInput == "yes") {
      // If it matches, show this message to the user
      print("Enter the name of the book that you want to add to your catalog:");

      // Input the name of the book
      String bookName = stdin.readLineSync()!;

      // Input the value of the book
      int bookValue = int.parse(stdin.readLineSync()!);

      // Checking if this book is in your library
      if (library.containsKey(bookName)) {
        // If it contains, add this book to the catalog
        catalog[bookName] = bookValue;
      } else {
        // Print this message to the user if the book is not in the library
        print("\nYou are trying to add an invalid book to your catalog.");
      }
      // When the user enters 'no', the program will break
    } else if (userInput == "no") {
      break;
    } else {
      // Print this message if the user enters an invalid option
      print("You entered an invalid option.");
    }
  }

  // Printing the books that you added to your catalog
  print("Your books in your catalog are:");
  print(catalog);

  // Initializing the count variable to count the number of books in the catalog
  int count = 0;

  // Empty list to add the books that are borrowed by the user
  List myBooks = [];

  // For-each loop for iterating over your catalog
  catalog.forEach((key, value) {
    // Add books one by one that you entered in the catalog
    myBooks.add(key);

    // Increment the count every time
    count++;
  });

  // Print the resultant output
  print("You borrowed $count books, and their names are:");
  print(myBooks);
}
