import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter the first number
  stdout.write('ENTER YOUR FIRST NUMBER:');
  int a = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the second number
  stdout.write("ENTER YOUR SECOND NUMBER:");
  int b = int.parse(stdin.readLineSync()!);

  // Initialize a variable to store the sum of even numbers
  int sum = 0;

  // Iterate through the numbers from 'a' to 'b-1'
  for (int i = a; i < b; i++) {
    // Check if the current number is even
    if (i % 2 == 0) {
      // Add the even number to the sum
      sum += i;
    }
  }

  // Print the sum of all even numbers in the given range
  print("The sum of all even numbers is: $sum");
}
