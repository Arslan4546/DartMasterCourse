import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a day
  stdout.write("Enter your day: ");

  // Read user input for the day
  String day = stdin.readLineSync()!;

  // Switch statement to determine if the entered day is a weekend day or not
  switch (day.toLowerCase()) {
    case 'sunday':
    case 'saturday':
      print('Weekend day');
      break;
    case 'monday':
    case 'tuesday':
    case 'wednesday':
    case 'thursday':
    case 'friday':
      print('No weekend day');
      break;
    default:
      print("Invalid day!");
  }
}
