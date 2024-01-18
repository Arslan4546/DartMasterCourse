import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number
  stdout.write("Enter your number: ");

  // Read user input for the number
  int number = int.parse(stdin.readLineSync()!);

  // Switch statement to determine the sign of the entered number
  switch (number) {
    case 1:
      print('Positive');
      break;
    case -1:
      print('Negative');
      break;
    case 0:
      print('Zero');
      break;
    default:
      print("Invalid input!");
  }
}
