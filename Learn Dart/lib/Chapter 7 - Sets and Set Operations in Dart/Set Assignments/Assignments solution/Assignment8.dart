import 'dart:io';

void main(List<String> args) {
  // Take the length of your set
  stdout.write("Enter the length of your set:");

  // Store the length of the set in your variable (a)
  int a = int.parse(stdin.readLineSync()!);

  // Initializing the variable for counting the elements in the set
  int count = 0;

  // Initializing the empty set
  Set<int> mySet = {};

  // For loop for storing the elements in the set one by one
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    // Adding the elements to the set one by one
    mySet.add(n);

    // Incrementing the count variable for each added element
    count++;
  }

  // Simply printing your set
  print("Your set is: $mySet");

  // Print the total number of elements that you entered in the set
  print('Total elements in the set: $count');
}
