import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number
  stdout.write("Enter your number:");
  String number = stdin.readLineSync()!;

  // Initialize a variable to store the sum of the digits
  int count = 0;

  // Iterate through each digit of the input number
  for (int i = 0; i < number.length; i++) {
    // Convert the current character to an integer
    int convert = int.parse(number[i]);

    // Add the converted digit to the sum
    count += convert;
  }

  // Print the sum of the digits of the entered number
  print("Sum of total digits of your number is: $count");
}
