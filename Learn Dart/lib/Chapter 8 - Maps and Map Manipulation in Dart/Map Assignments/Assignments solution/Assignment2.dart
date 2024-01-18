import 'dart:io';

void main(List<String> args) {
  // Create an empty list to store user input
  List myList = [];

  // Prompt the user to enter words in the list one by one
  print("Enter your words in the list one by one:");

  // For loop for entering the elements in the list one by one
  for (int i = 0; i < 5; i++) {
    // Read user input for each word
    String a = stdin.readLineSync()!;

    // Add the word to the list
    myList.add(a);
  }

  // Print the list entered by the user
  print("Your list is: $myList");

  // Create an empty map to store word frequencies
  Map<String, int> wordFrequency = {};

  // For-in loop for checking the frequency of each word
  for (String word in myList) {
    // Increment the frequency count for each word in the map
    wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
  }

  // Sort the entries in reverse order based on frequency
  var sortedEntries = wordFrequency.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Print word frequency in reverse order
  print("\nWord\t\tFrequency");
  print("-------------------------");

  // For-each loop for iterating the sorted entries and printing the words and their frequency
  sortedEntries.forEach((entry) {
    print("${entry.key}\t\t${entry.value}");
  });
}
