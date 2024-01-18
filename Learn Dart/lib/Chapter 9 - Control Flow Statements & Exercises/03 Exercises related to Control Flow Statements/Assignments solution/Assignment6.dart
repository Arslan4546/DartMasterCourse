import 'dart:io';

void main(List<String> args) {
  // Ask the user to enter the length of the series
  stdout.write("Enter the length of your series: ");

  // Store the length in the 'length' variable
  int length = int.parse(stdin.readLineSync()!);

  // Initialize a variable for counting the whole series
  int count = 0;

  // Ask the user to enter the elements of the series one by one
  print("Enter the series of numbers one by one:");

  // For loop for getting the elements in the series
  for (int i = 0; i < length; i++) {
    int a = int.parse(stdin.readLineSync()!);

    // Every time an element is entered, add it to the 'count' variable
    count += a;

    // Print the sum of the series entered so far
    print("The sum of your series is: $count");
  }
}
