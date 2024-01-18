import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter the first number
  stdout.write('Enter your first number:');
  int first = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the second number
  stdout.write('Enter your second number:');
  int second = int.parse(stdin.readLineSync()!);

  // Initialize a list to store prime numbers within the specified range
  List<int> primeNumbers = [];

  // Iterate through the numbers from 'first' to 'second'
  for (int i = first; i <= second; i++) {
    // Assume the current number is prime
    bool isPrime = true;

    // Check for divisors in the range from 2 to half of the current number
    for (int j = 2; j <= i / 2; j++) {
      // If a divisor is found, mark the number as not prime and exit the loop
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    // If the number is prime and greater than 1, add it to the list
    if (isPrime && i > 1) {
      primeNumbers.add(i);
    }
  }

  // Print the list of prime numbers within the specified range
  print(primeNumbers);
}
