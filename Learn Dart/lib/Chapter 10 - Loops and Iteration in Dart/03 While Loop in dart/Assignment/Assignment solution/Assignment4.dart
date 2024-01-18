void main() {
  // Input a positive integer
  int num = 16;

  // Check if the number is even and greater than 2
  if (num > 2 && num % 2 == 0) {
    // Iterate through possible pairs of prime numbers
    for (int i = 2; i <= num / 2; i++) {
      if (isPrime(i) && isPrime(num - i)) {
        // Print the pairs of prime numbers that sum up to the given number
        print('$num = $i + ${num - i}');
      }
    }
  } else {
    print('Please enter a positive even integer greater than 2.');
  }
}

// Function to check if a number is prime
bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
