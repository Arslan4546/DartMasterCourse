import 'dart:io';

void main(List<String> args) {
  // Enter a message for the user
  print("Enter your sentence:");

  // Store the sentence in this variable
  String sentence = stdin.readLineSync()!;

  // Convert the sentence to lowercase
  sentence.toLowerCase();

  // Remove all the special symbols from the sentence
  sentence.replaceAll(RegExp(r'[^\w\s]'), "");

  // Create a list to store each word individually
  List myList = sentence.split(" ");

  // Create an empty map to store word frequencies
  Map myMap = {};

  // For-in loop for traversing the list and finding word frequencies
  for (String word in myList) {
    // Method to find the frequency of each word
    myMap[word] = (myMap[word] ?? 0) + 1;
  }

  // Print statement for the user
  print("\nWord\t\tFrequency");
  print("--------------------");

  // For-each loop for printing the word and its frequency
  myMap.forEach((key, value) {
    print("${key}\t\t${value}");
  });
}
