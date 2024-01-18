import 'dart:io';

void main(List<String> args) {
  // Taking the length of a set
  stdout.write("Enter the length of a set: ");

  // Store the length of the set into the variable (a)
  int a = int.parse(stdin.readLineSync()!);

  // Initializing an empty set
  Set<int> set = {};

  // Initializing the variable count to count all the values in the set
  int count = 0;

  // Print this message before adding elements to the set
  print("Enter elements of the set one by one:");

  // Loop for adding elements to the set
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Counting all the values that enter by the user
    count++;

    // Adding the elements to the set one by one
    set.add(n);
  }

  // Simply printing the set
  print("Your set is: ${set}");

  // Converting the set to a list
  List myList = set.toList();

  // Suppose the first element is larger
  int max = myList[0];

  // Loop for traversing the whole list
  for (int i = 1; i < myList.length; i++) {
    // Condition
    if (myList[i] > max) {
      max = myList[i];
    }
  }

  // Print the maximum value
  print("The maximum value in your set is: ${max}");

  // Suppose the first element is smaller
  int min = myList[0];

  // Loop for traversing over the whole list
  for (int i = 1; i < myList.length; i++) {
    // Condition
    if (myList[i] < min) {
      min = myList[i];
    }
  }

  // Print the minimum value
  print("The minimum value in your set is: ${min}");

  // Fold() method to take the sum of all the elements in the set
  num sum = set.fold(0, (previous, next) => previous + next);

  // Finding the average
  var average = sum / count;

  // Simply print the average that we count
  print("The average of all the elements in the set is: ${average}");

  // Simply printing the sum of all the elements in the set
  print("The sum of all the elements in the set is: ${sum}");
}
