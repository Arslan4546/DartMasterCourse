// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize an integer variable 'age' with the value 20.
  int age = 20;

  // Declare and initialize a String variable 'city' with the value "liaquatpur".
  String city = "liaquatpur";

  // Use a conditional (ternary) expression to determine eligibility for voting.
  // Check if age is greater than or equal to 18 and the city is "Bahawalpur".
  String result = (age >= 18 && city == "Bahawalpur")
      ? "Person is eligible for vote"
      : "Person is not eligible for vote";

  // Print the result based on the conditional expression.
  print(result);
}
