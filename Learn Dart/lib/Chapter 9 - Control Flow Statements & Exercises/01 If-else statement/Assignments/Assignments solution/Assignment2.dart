import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter the year for leap year check
  stdout.write("Enter the year to check if it is a leap year: ");
  int year = int.parse(stdin.readLineSync()!);

  // Check if the year is a leap year or not
  if (year % 4 == 0) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}
