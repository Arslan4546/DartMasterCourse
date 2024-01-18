// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize a string variable 'name'.
  String name = "this is a student";

  // Split the string into a list of words using space as the separator.
  List<String> wordList = name.split(" ");

  // Initialize a variable 'a' to count the number of words.
  int wordCount = 0;

  // Iterate through the elements of the list to count the words.
  for (int i = 0; i <= wordList.length - 1; i++) {
    // Increment the word count for each word in the list.
    wordCount++;
  }

  // Print the total count of words in the given string.
  print("Total number of words: $wordCount");
}
