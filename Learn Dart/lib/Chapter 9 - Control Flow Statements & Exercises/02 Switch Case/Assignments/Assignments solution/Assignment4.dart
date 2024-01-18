import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a color
  stdout.write("Enter your color: ");

  // Read user input for the color
  String color = stdin.readLineSync()!;

  // Switch statement to provide instructions based on the entered color
  switch (color) {
    case 'red':
      print('Stop');
      break;
    case 'blue':
      print('Continue');
      break;
    case 'green':
      print('Keep trying');
      break;
    case 'yellow':
      print('Keep struggling');
      break;
    default:
      print("You entered an invalid color!");
  }
}
