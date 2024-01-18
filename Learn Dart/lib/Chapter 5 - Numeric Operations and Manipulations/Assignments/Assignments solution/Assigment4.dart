// Import the 'dart:io' library to use input and output functions.
import 'dart:io';

// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Prompt the user to enter their height and read the input.
  stdout.write("Enter your height: ");
  double height = double.parse(stdin.readLineSync()!);

  // Prompt the user to enter their weight in kilograms and read the input.
  stdout.write("Enter your weight in kg: ");
  double weight = double.parse(stdin.readLineSync()!);

  // Define a function 'calculateBMI' to compute the BMI using the provided height and weight.
  double calculateBMI(double h, double w) {
    return w / (h * h);
  }

  // Call the 'calculateBMI' function with user-provided height and weight values.
  double BMI = calculateBMI(height, weight);

  // Print the calculated BMI.
  print("YOUR BMI IS: $BMI");
}
