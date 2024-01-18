import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a grade
  stdout.write("Enter your grade: ");

  // Read user input for the grade
  String grade = stdin.readLineSync()!;

  // Switch statement to provide feedback based on the entered grade
  switch (grade) {
    case 'A+':
      print('Excellent!');
      break;
    case 'A':
      print('Very good');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Bad');
      break;
    case 'D':
      print('Very bad');
      break;
    default:
      print("You entered an invalid grade!");
  }
}
