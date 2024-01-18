void main(List<String> args) {
  // Creating a string list
  List<String> previousList = ["level", "hello", "radar", "world", "madam"];

  // Creating an empty list to store palindrome words
  List<String> palindromList = [];

  // Another list to store non-palindrome words
  List<String> nonPalindrome = [];

  // For loop to iterate through each item in the list
  for (int i = 0; i <= previousList.length - 1; i++) {
    // Each item at the current index will be stored in the variable 'string'
    String string = previousList[i];

    // Declaring an empty variable to store each reversed element of the list
    String palin = "";

    // For loop to iterate through each index of a specific element in the list
    for (int j = string.length - 1; j >= 0; j--) {
      // Storing each index letter in the variable 'palin'
      palin += string[j];
    }

    // Condition for checking if it is a palindrome
    if (palin == string) {
      // Adding the palindrome item to the palindrome list
      palindromList.add(string);
    } else {
      // Adding the non-palindrome item to the non-palindrome list
      nonPalindrome.add(string);
    }
  }

  // Printing the palindrome list
  print("THE PALINDROM LIST IS :${palindromList}");

  // Printing the non-palindrome list
  print("THE NON PALINDROM LIST IS :${nonPalindrome}");

  // Counting the number of palindrome items in the palindrome list
  print("THE ITEMS IN THE PALINDROM LIST IS :${palindromList.length}");

  // Sorting the palindrome list
  palindromList.sort();

  // Displaying the final sorted palindrome list
  print("THE FINAL SORTED PALINDROM LIST IS :${palindromList}");
}
