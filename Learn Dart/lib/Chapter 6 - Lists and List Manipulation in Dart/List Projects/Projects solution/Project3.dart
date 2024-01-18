import 'dart:io';

void main() {
  // Create an empty list called wordList to store words.
  List wordList = [];

  // Prompt the user to enter words in the list.
  print("ENTER YOUR WORDS IN THE LIST :");

  // Use a for loop to insert words one by one.
  for (int i = 0; i < 5; i++) {
    String? a = stdin.readLineSync();
    // Add each word to the list using the loop index.
    wordList.add(a);
  }

  // Print the list that you entered.
  print("YOUR LIST IS :${wordList}");

  // Shuffle the list that you entered in the prompt.
  wordList.shuffle();

  // Print the shuffled list.
  print("YOUR SHUFFLED LIST IS :${wordList}");

  // Sort the list before reversing.
  wordList.sort();

  // Print the reversed list.
  print("YOUR REVERSED LIST IS :${wordList.reversed}");

  // Create a copy of the reversed list.
  List copyList = [...wordList.reversed];

  // Prompt the user to enter a word to guess if it exists in the list.
  print("ENTER YOUR WORD THAT YOU GUESS IS THIS IN THE WORD LIST :");

  // Store the guessed word in the container guessWord.
  String guessWord = stdin.readLineSync()!;

  // Create an empty list to store the index of the actual list entered by the user.
  List index = [];

  // Check if the word exists in the list.
  if (wordList.contains(guessWord)) {
    // If it exists, print this statement.
    print("THIS WORD EXISTS IN THE LIST ");
  } else {
    // If it does not exist, print this statement.
    print("THIS WORD DOES NOT EXIST IN THIS LIST");
  }

  // Use a for loop to find the length for each word.
  for (int i = 0; i <= copyList.length - 1; i++) {
    // Store each index in the container result.
    String result = copyList[i];
    // Add the length of each word to the index list.
    index.add(result.length);
  }

  // Print the length for each word.
  print("YOUR LENGTH FOR EACH WORD IS :${index}");

  // Find the word that has the smallest length in the word list.
  String smallestWord = copyList
      .reduce((current, next) => current.length < next.length ? current : next);

  // Remove the word that has the smallest length in the word list.
  copyList.removeWhere((element) => element == smallestWord);

  // Print the final list.
  print("YOUR FINAL LIST IS :${copyList}");
}
