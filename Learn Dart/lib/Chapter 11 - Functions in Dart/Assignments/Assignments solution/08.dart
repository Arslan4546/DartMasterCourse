void main(List<String> args) {
  // Example usage: Call the function to find the maximum number in the list
  findMaxNumber([1, 2, 3, 4, 5, 6, 7, 8]);
}

// Function to find the maximum number in a given list
void findMaxNumber(List myList) {
  // Initialize maxnum with the first element of the list
  int maxNum = myList[0];

  // Iterate through the list starting from the second element
  for (int i = 1; i < myList.length; i++) {
    // Check if the current element is greater than the current maxnum
    if (myList[i] > maxNum) {
      // Update maxnum if the current element is greater
      maxNum = myList[i];
    }
  }

  // Print the maximum number in the list
  print("The maximum number in the list is: $maxNum");
}
