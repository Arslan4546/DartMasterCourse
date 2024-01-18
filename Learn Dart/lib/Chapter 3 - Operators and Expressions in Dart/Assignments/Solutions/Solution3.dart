// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize two String variables 'firstName' and 'lastName'.
  String firstName = "Arslan";
  String lastName = "Mannan";

  // Check if the length of 'firstName' is greater than the length of 'lastName'.
  if (firstName.length > lastName.length) {
    // If true, print a message indicating that the length of 'firstName' is greater.
    print("The length of firstName is greater.");
  }
  // Check if the length of 'firstName' is less than the length of 'lastName'.
  else if (firstName.length < lastName.length) {
    // If true, print a message indicating that the length of 'lastName' is greater.
    print("The length of lastName is greater.");
  }
  // If neither condition is true, it means the lengths of 'firstName' and 'lastName' are equal.
  else {
    // Print a message indicating that both strings have equal lengths.
    print("Both have equal length.");
  }
}
