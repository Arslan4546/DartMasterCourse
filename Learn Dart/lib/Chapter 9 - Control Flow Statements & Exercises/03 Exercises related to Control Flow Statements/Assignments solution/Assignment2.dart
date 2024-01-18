import 'dart:io';

void main(List<String> args) {
  // Create an empty list to store all the divisors of the user-entered number
  List divisibleList = [];

  // Ask the user to enter a number to check whether it is prime or not
  stdout.write("Enter a number to check whether it is prime or not: ");

  // Store the user-entered number
  int number = int.parse(stdin.readLineSync()!);

  // Condition to check whether the number is prime or not
  if (number > 1) {
    bool isPrime = true;

    for (int i = 2; i <= number / 2; i++) {
      // Condition to check if the number is divisible by any number other than 1 and itself
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    // Print whether the number is prime or not
    if (isPrime) {
      print("The number you entered is prime.");
    } else {
      print("The number you entered is not prime.");

      // For loop to find all divisors of the entered number
      for (int i = 1; i <= number; i++) {
        // Condition to add all divisors to the list
        if (number % i == 0) {
          divisibleList.add(i);
        }
      }

      // Print the list of all divisors of the entered number
      print("The list of divisors for your number is: $divisibleList");
    }
  } else {
    // Print if the entered number is not greater than 1
    print("Please enter a number greater than 1.");
  }
}
