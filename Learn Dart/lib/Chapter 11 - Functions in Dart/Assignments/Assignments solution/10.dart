import 'dart:io';

void main(List<String> args) {
  // Prompt user to enter a number
  stdout.write("Enter your number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Check if the entered number is prime and print the result
  if (checkPrime(number)) {
    print("Your entered number $number is a prime number.");
  } else {
    print("Your entered number $number is not a prime number.");
  }
}

// Function to check if a given number is prime
bool checkPrime(int n) {
  // 0 and 1 are not prime numbers
  if (n <= 1) {
    return false;
  }

  // Check for divisors from 2 to n/2
  for (int i = 2; i <= n ~/ 2; i++) {
    // If n is divisible by i, it is not a prime number
    if (n % i == 0) {
      return false;
    }
  }

  // If no divisors are found, n is a prime number
  return true;
}
