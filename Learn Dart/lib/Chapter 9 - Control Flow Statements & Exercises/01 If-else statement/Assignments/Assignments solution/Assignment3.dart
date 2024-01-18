import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number for temperature conversion
  stdout.write("Enter a number for temperature conversion: ");
  double number = double.parse(stdin.readLineSync()!);

  // Ask the user for their choice of conversion (celsius or fahrenheit)
  print("Choose the conversion: celsius or fahrenheit?");
  String userInput = stdin.readLineSync()!;

  // Check the user's choice and perform the temperature conversion
  if (userInput == "celsius") {
    // Convert to Celsius from Fahrenheit
    double temperature = (number * 9 / 5) + 32;
    print("Your temperature in Celsius is ${temperature}");
  } else if (userInput == "fahrenheit") {
    // Convert to Fahrenheit from Celsius
    double temperature = (number - 32) * 5 / 9;
    print("Your temperature in Fahrenheit is ${temperature}");
  } else {
    // Inform the user about an invalid choice
    print("Invalid choice!");
  }
}
