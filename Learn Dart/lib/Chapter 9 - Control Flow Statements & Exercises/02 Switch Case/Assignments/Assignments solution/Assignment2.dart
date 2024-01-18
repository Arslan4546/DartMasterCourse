import 'dart:io';

void main() {
  // Prompt the user to enter a number
  stdout.write("Enter a number: ");

  // Read user input for the day
  int day = int.parse(stdin.readLineSync()!);

  // Switch statement to determine the day based on the entered number
  switch (day) {
    case 1:
      print('Today is Monday');
      break;
    case 2:
      print('Today is Tuesday');
      break;
    case 3:
      print('Today is Wednesday');
      break;
    case 4:
      print('Today is Thursday');
      break;
    case 5:
      print('Today is Friday');
      break;
    case 6:
      print('Today is Saturday');
      break;
    case 7:
      print('Today is Sunday');
      break;
    default:
      print('Invalid number!');
  }
}
