import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number.
  stdout.write("Enter a number: ");

  // Read the user input and parse it into an integer.
  int number = int.parse(stdin.readLineSync()!);

  // Initialize a loop counter.
  int i = 1;

  // Use a while loop to calculate and print the multiplication table for the entered number.
  while (i <= 10) {
    // Print the multiplication expression and result for the current iteration.
    print("$number * $i = ${number * i}");

    // Increment the loop counter.
    i++;
  }
}
