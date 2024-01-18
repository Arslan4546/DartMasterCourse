import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a month
  stdout.write('Enter your month: ');

  // Read user input for the month
  String month = stdin.readLineSync()!;

  // Switch statement to determine the number of days in the entered month
  switch (month.toLowerCase()) {
    case 'january':
      print('This month contains 31 days');
      break;
    case 'february':
      print('This month contains 28 days (29 days in a leap year)');
      break;
    case 'march':
      print('This month contains 31 days');
      break;
    case 'april':
      print('This month contains 30 days');
      break;
    case 'may':
      print('This month contains 31 days');
      break;
    case 'june':
      print('This month contains 30 days');
      break;
    case 'july':
      print('This month contains 31 days');
      break;
    case 'august':
      print('This month contains 31 days');
      break;
    case 'september':
      print('This month contains 30 days');
      break;
    case 'october':
      print('This month contains 31 days');
      break;
    case 'november':
      print('This month contains 30 days');
      break;
    case 'december':
      print('This month contains 31 days');
      break;
    default:
      print('Selected month is unknown');
  }
}
