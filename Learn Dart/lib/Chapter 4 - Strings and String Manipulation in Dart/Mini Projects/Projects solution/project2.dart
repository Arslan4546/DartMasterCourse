// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Ask the user to enter a paragraph.
  stdout.write("Enter your paragraph: ");

  // Store the entered paragraph in the 'paragraph' container.
  String paragraph = stdin.readLineSync()!;

  // Remove special characters from the paragraph using replaceAll().
  paragraph = paragraph.replaceAll(RegExp(r'[^\w\s]'), '');

  // Split the paragraph into a list of words using space as the separator.
  List myList = paragraph.split(" ");

  // Print the header for the word frequency table.
  print("\nWord\t\tFrequency");
  print("-------------------------");

  // Iterate through the list of words to count and display their frequencies.
  for (int i = 0; i < myList.length; i++) {
    // Count the number of occurrences for each word.
    int count = 1;

    // Check for duplicates and count their occurrences.
    for (int j = i + 1; j < myList.length; j++) {
      // Condition to match the words.
      if (myList[i] == myList[j]) {
        // Increment the counter container.
        count++;
        // Mark the duplicate word as processed.
        myList[j] = "";
      }
    }

    // Print the word and its frequency.
    print("${myList[i]}\t\t$count");
  }
}
