import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter their category
  print("Enter your category:");
  String category = stdin.readLineSync()!;

  // Prompt the user to enter their age
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  // Check the user's category and age to determine the ticket price
  if (category == "children") {
    if (age >= 0 && age < 18) {
      print("Your ticket price for cinema is: Rs.30");
    }
  } else if (category == "adult") {
    if (age >= 18 && age <= 40) {
      print("Your ticket price for cinema is: Rs.50");
    }
  } else if (category == "seniors") {
    if (age >= 41 && age <= 70) {
      print("Your ticket price for cinema is: Rs.100");
    }
  } else {
    // Inform the user if they are out of the specified categories
    print("You are out of category. We don't have any ticket for you!");
  }
}
