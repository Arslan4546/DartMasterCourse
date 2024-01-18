// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter the principal amount and read the input.
  stdout.write("Enter your principal amount: ");
  int principleAmount = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the interest rate and read the input.
  stdout.write("Enter your interest rate: ");
  int interestRate = int.parse(stdin.readLineSync()!);

  // Prompt the user to enter the time period and read the input.
  stdout.write("Enter your time period: ");
  int timePeriod = int.parse(stdin.readLineSync()!);

  // Subtract the principal amount from the time period (assuming a typo in the code).
  timePeriod -= principleAmount;

  // Calculate the compound interest using the given formula.
  var compoundInterest = principleAmount *= (1 + interestRate) ^ timePeriod;

  // Print the calculated compound interest.
  print(compoundInterest);
}
