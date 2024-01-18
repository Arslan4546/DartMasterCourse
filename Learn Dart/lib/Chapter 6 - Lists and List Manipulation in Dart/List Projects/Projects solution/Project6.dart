void main(List<String> args) {
  // Creating a list
  List<int> previousList = [5, 3, 9, 2, 5, 8, 2, 1];

  // Making the list unique
  List uniqueList = previousList.toSet().toList();

  // Printing the unique list
  print("YOUR UNIQUE LIST IS :${uniqueList}");

  // Calculating the sum of this unique list
  num calculatSum = uniqueList.fold(0, (previous, next) => previous + next);

  // Print the sum of this unique list
  print("THE SUM OF YOUR UNIQUE LIST IS :${calculatSum}");

  // Sorting the unique list
  uniqueList.sort();

  // Print the sorted unique list
  print("YOUR UNIQUE SORTED LIST IS :${uniqueList}");

  // Finding the smallest number in the unique list
  print("THE SMALLEST NUMBER IN THIS UNIQUE LIST IS :${uniqueList[0]}");

  // Finding the largest number in the unique list
  print(
      "THE LARGEST NUMBER IN THE UNIQUE LIST IS :${uniqueList[uniqueList.length - 1]}");

  // Printing the final list at the end
  print("THE FINAL LIST IS :${uniqueList}");
}
