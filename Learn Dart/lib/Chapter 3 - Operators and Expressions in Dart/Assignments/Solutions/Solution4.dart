// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize an integer variable 'a' with the value 9.
  int a = 9;

  // Check if 'a' is divisible by 2 but not by 3.
  if (a % 2 == 0) {
    // If true, print a message indicating that 'a' is divisible by 2, not by 3.
    print("a is divisible by 2 but not by 3.");
  }
  // Check if 'a' is divisible by 3 but not by 2.
  else if (a % 3 == 0) {
    // If true, print a message indicating that 'a' is divisible by 3, not by 2.
    print("a is divisible by 3 but not by 2.");
  }
  // If neither condition is true, it means 'a' is not divisible by 2 or 3.
  else {
    // Print a message indicating that 'a' is an invalid number.
    print("Invalid number");
  }
}
