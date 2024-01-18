// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize two integer variables 'a' and 'b'.
  int a = 12;
  int b = 23;

  // Check if 'a' is greater than 'b'.
  if (a > b) {
    // If true, print a message indicating that 'a' is greater than 'b'.
    print("a is greater than b.");
  }
  // Check if 'a' is less than 'b'.
  else if (a < b) {
    // If true, print a message indicating that 'a' is less than 'b'.
    print("a is less than b.");
  }
  // If neither condition is true, it means 'a' and 'b' are equal.
  else {
    // Print a message indicating that 'a' and 'b' are both equal numbers.
    print("a and b are both equal numbers.");
  }
}
