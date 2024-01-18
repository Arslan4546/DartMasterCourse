import 'dart:io';

void main(List<String> args) {
  // Initialize two lists to manage the library and borrowed books
  List library = [];
  List borrowList = [];

  // Infinite loop for the library management system
  while (true) {
    // Display the main menu for the library management system
    print("\nWELCOME TO LIBRARY MANAGEMENT SYSTEM:");
    print("1. Add books to the library.");
    print("2. Remove books from the library.");
    print("3. Borrow books from the library.");
    print("4. Display borrowed books.");
    print("5. Display books in/out.");
    print("6. Exit");

    // Read the user's choice
    int userChoice = int.parse(stdin.readLineSync()!);

    // Perform actions based on user's choice
    switch (userChoice) {
      case 1:
        // Add books to the library
        stdout.write("Enter the book name you want to add: ");
        String bookName = stdin.readLineSync()!;
        library.add(bookName);
        print("Successfully added!");
        break;

      case 2:
        // Remove books from the library
        if (library.isNotEmpty) {
          stdout.write("Enter the book name you want to remove: ");
          String removeBook = stdin.readLineSync()!;
          library.remove(removeBook);
          print("Removed successfully!");
        } else {
          print("Your library is empty!");
          print("Please add books first.");
        }
        break;

      case 3:
        // Borrow books from the library
        if (library.isNotEmpty) {
          stdout.write("Enter the name of the book you want to borrow: ");
          String bookName1 = stdin.readLineSync()!;
          if (library.contains(bookName1)) {
            borrowList.add(bookName1);
            library.remove(bookName1);
            print("Book borrowed successfully!");
          } else {
            print("This book is not available in the library.");
            print("Please enter a valid book that is available.");
          }
        } else {
          print("Your library is empty!");
          print("Please add books first.");
        }
        break;

      case 4:
        // Display borrowed books
        print("Borrowed books: $borrowList");
        break;

      case 5:
        // Display books in/out
        if (library.isNotEmpty) {
          print("Books available in your library: $library");
        } else {
          print("Your library is empty.");
        }
        if (borrowList.isNotEmpty) {
          print("Borrowed books: $borrowList");
        } else {
          print("Your borrow list is empty.");
        }
        break;

      case 6:
        // Exit the program
        exit(0);

      default:
        // Invalid option
        print('Please enter a valid option.');
    }
  }
}
