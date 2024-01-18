import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your sentence: ");
  String sentence = stdin.readLineSync()!;

  // Call the function to count words in the entered sentence
  countWords(sentence);
}

// Function to count words in a given sentence
void countWords(String sentence) {
  int count = 0;

  // Split the sentence into words using space as the delimiter
  List<String> myList = sentence.split(" ");

  // Iterate through the list of words and count them
  for (int i = 0; i < myList.length; i++) {
    count++;
  }

  // Print the count of words in the sentence
  print("The number of words in the sentence is: $count");
}
