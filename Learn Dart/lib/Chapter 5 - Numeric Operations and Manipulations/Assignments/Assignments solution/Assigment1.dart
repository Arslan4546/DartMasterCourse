// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Call the calculateBill function with specified parameters and store the result.
  double result = calculateBill(12000.755, 6.5);

  // Print the result with precision fixed to two decimal places.
  print(result.toStringAsFixed(2));
}

// Define a function named 'calculateBill' that takes 'amount' and 'taxRate' as parameters.
// Calculates the total bill by adding the amount and the calculated tax.
double calculateBill(double amount, double taxRate) {
  return amount + taxRate;
}
