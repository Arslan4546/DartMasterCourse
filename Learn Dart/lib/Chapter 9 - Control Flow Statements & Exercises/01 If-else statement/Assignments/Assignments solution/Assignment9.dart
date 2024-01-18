import 'dart:io';

void main(List<String> args) {
  // Initialize an empty map to store word frequencies
  Map<String, int> myMap = {};

  // Prompt the user to enter a string
  print("Enter your string:");
  String sentence = stdin.readLineSync()!;

  // Convert the sentence to lowercase and remove non-alphanumeric characters
  sentence = sentence.toLowerCase();
  String result = sentence.replaceAll(RegExp(r"[^\w\s]"), "");

  // Split the cleaned sentence into a list of words
  List<String> sentenceList = result.split(" ");

  // Count the frequency of each word and populate the map
  for (int i = 0; i < sentenceList.length; i++) {
    // Check if the word is not empty
    if (sentenceList[i].isNotEmpty) {
      int count = 1;

      // Iterate through the remaining words to count occurrences
      for (int j = i + 1; j < sentenceList.length; j++) {
        if (sentenceList[i] == sentenceList[j]) {
          // Increment count and mark the duplicate as empty
          count++;
          sentenceList[j] = "";
        }
      }

      // Add the word and its frequency to the map
      myMap[sentenceList[i]] = count;
    }
  }

  // Convert the map entries to a list for sorting
  List<MapEntry<String, int>> entryList = myMap.entries.toList();

  // Sort the list based on values in descending order
  entryList.sort((a, b) => b.value.compareTo(a.value));

  // Print the sorted word frequencies
  for (var word in entryList) {
    print("${word.key} : ${word.value}");
  }
}
