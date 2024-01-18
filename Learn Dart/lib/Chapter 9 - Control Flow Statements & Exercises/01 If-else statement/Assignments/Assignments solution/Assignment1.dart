import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter their marks
  stdout.write("Enter your marks to find your result: ");
  int marks = int.parse(stdin.readLineSync()!);

  // Check the range of marks to determine the result
  if (marks >= 90 && marks <= 100) {
    print("A+");
  } else if (marks >= 80 && marks < 89) {
    print("A");
  } else if (marks >= 70 && marks < 79) {
    print("B+");
  } else if (marks >= 60 && marks < 69) {
    print("B");
  } else if (marks >= 50 && marks < 59) {
    print("C");
  } else if (marks >= 33) {
    print("D");
  } else if (marks < 33) {
    print("Sorry! You have failed.");
  } else {
    // Inform the user about entering invalid marks
    print("You entered invalid marks.");
  }
}
