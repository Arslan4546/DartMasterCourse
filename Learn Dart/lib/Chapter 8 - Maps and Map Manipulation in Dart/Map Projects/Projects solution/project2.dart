import 'dart:io';

void main(List<String> args) {
  // Initialize a map to store student names and their corresponding grades
  Map<String, dynamic> studentMap = {
    'Arslan': [],
    'Hannan': [],
    'Mannan': [],
    'Rizwan': [],
  };

  // Ask the user if they want to add grades for each student
  print("Would you like to add the grade for each student?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput = stdin.readLineSync()!;

  // Process user input to add grades for each student
  if (userInput == "yes") {
    for (int i = 0; i < 4; i++) {
      // Prompt user for the name of the student
      print("Enter the name of student:");
      String name = stdin.readLineSync()!;

      // Check if the entered name is valid
      if (studentMap.containsKey(name)) {
        List studentList = [];

        // Prompt user to enter marks for the student
        print("Enter marks of this student one by one:");
        for (int i = 0; i < 3; i++) {
          int marks = int.parse(stdin.readLineSync()!);
          studentList.add(marks);
        }

        // Update the studentMap with the list of marks for the student
        studentMap[name] = studentList;
      } else {
        // Inform the user about an invalid name
        print("You entered an invalid name of student.");
        print("Please enter a valid name of student.");
      }
    }
  } else if (userInput == "no") {
    print("Addition of marks for each student skipped!");
  } else {
    print("Invalid choice.");
  }

  // Ask the user if they want to access the marks of a student
  print("Would you like to access the marks of a student?");
  print('If "yes", type "yes"; if no, type "no".');
  String userInput1 = stdin.readLineSync()!;

  // Process user input to show the marks of a specific student
  if (userInput1 == "yes") {
    print("Enter the name of student:");
    String name1 = stdin.readLineSync()!;
    print("The marks of this student are:");
    print(studentMap[name1]);
  } else if (userInput1 == "no") {
    print("Access marks operation skipped!");
  } else {
    print("Invalid choice.");
  }

  // Ask the user if they want to get the average marks of a student
  print("Would you like to get the average marks of a student?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput2 = stdin.readLineSync()!;

  // Process user input to calculate and show the average marks of each student
  if (userInput2 == "yes") {
    for (int i = 0; i < studentMap.length; i++) {
      print("Enter the name of student:");
      String name2 = stdin.readLineSync()!;
      List countAverage = studentMap[name2];
      num total = countAverage.fold(0, (previous, next) => previous + next);
      double average = total / countAverage.length;

      // Display the average marks of the student
      print("The average marks of $name2 is: ${average}");
    }
  } else if (userInput2 == "no") {
    print("Finding average marks for each student is skipped!");
  } else {
    print("Invalid choice.");
  }

  // Ask the user if they want to update the marks of a student
  print("Would you like to update the marks of a student?");
  print('If "yes", type "yes"; if not, type "no".');
  String userInput3 = stdin.readLineSync()!;

  // Process user input to update the marks of a specific student
  if (userInput3 == "yes") {
    print("Enter the name of student:");
    String name3 = stdin.readLineSync()!;
    List marks = [];

    // Prompt user to enter the updated marks for the student
    print("Enter the updated marks of this student one by one:");
    for (int i = 0; i < 3; i++) {
      int updateMarks = int.parse(stdin.readLineSync()!);
      marks.add(updateMarks);
    }

    // Update the studentMap with the updated marks for the student
    print("You have updated the marks of $name3.");
    studentMap[name3] = marks;
  } else if (userInput3 == "no") {
    print("Update marks of a student operation is skipped!");
  } else {
    print("Invalid choice.");
  }

  // Display the final list of students and their grades
  print('Your final list of students and their grades is:');
  print(studentMap);
}
