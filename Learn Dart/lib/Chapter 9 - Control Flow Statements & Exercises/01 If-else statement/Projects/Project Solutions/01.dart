import 'dart:io';

void main(List<String> args) {
  // Initialize a map to store student information, including attendance
  Map<String, List<int>> studentInfo = {};

  // Main loop for the student management system
  while (true) {
    print("\nWELCOME TO STUDENT MANAGEMENT SYSTEM ");
    print('1. INSERT NEW STUDENT WITH ALL ATTENDANCE');
    print('2. CALCULATE THE ATTENDANCE OF STUDENT ACCORDING TO NAME');
    print('3. DISPLAY THE EACH STUDENT PERCENTAGE');
    print("4. DISPLAY THE STUDENT WITH HIGHER ATTENDANCE");
    print('5. EXIT');

    // Prompt the user to enter their option
    stdout.write("\nEnter your option: ");
    int userInput = int.parse(stdin.readLineSync()!);

    // Process the user's option using if-else statements
    if (userInput == 1) {
      // Option to insert a new student with attendance details
      addStudent(studentInfo);
    } else if (userInput == 2) {
      // Option to calculate the attendance of a student based on their name
      calculateStudentAttendance(studentInfo);
    } else if (userInput == 3) {
      // Option to display the attendance percentage of each student
      displayPercentage(studentInfo);
    } else if (userInput == 4) {
      // Option to display the student with the highest attendance
      higherAttendance(studentInfo);
    } else if (userInput == 5) {
      // Option to exit the program
      exit(0);
    } else {
      // Handling invalid options
      print("Invalid option");
    }
  }
}

// Function to add a new student with attendance details
void addStudent(Map<String, List<int>> studentMap) {
  stdout.write("Enter the name of the student: ");
  String name = stdin.readLineSync()!;
  stdout.write(
      "Enter the details of this student, such as attendance for lectures");
  List<int> myList = [];
  for (int i = 1; i <= 4; i++) {
    print("Enter the attendance for $i lecture: ");
    int attendance = int.parse(stdin.readLineSync()!);
    myList.add(attendance);
  }
  studentMap[name] = myList;
  print(studentMap);
}

// Function to calculate and display a student's attendance
void calculateStudentAttendance(Map<String, List<int>> studentMap) {
  stdout.write(
      "Enter the name of the student to find their attendance percentage: ");
  String name = stdin.readLineSync()!;

  List<int>? attendanceList = studentMap[name];
  if (attendanceList != null) {
    int sum = attendanceList.fold(0, (previous, next) => previous + next);
    print("You attended $sum classes out of ${attendanceList.length}");

    if (sum >= 2) {
      print("This student is allowed to sit in the exam");
      print("Thanks!");
    } else {
      print("This student is not allowed to sit in the exam");
      print("Thanks");
    }
  } else {
    print("Student not found");
  }
}

// Function to display the attendance percentage of each student
void displayPercentage(Map<String, List<int>> studentMap) {
  studentMap.forEach((key, value) {
    int sum = value.fold(0, (previous, next) => previous + next);
    double average = sum / value.length * 100;
    print("The average attendance of $key is: ${average.toStringAsFixed(2)}%");
  });
}

// Function to find and display the student with the highest attendance
void higherAttendance(Map<String, List<int>> higher) {
  double maxPercentage = 0;
  String maxListKey = '';
  higher.forEach((key, value) {
    int sum =
        value.fold(0, (previousValue, element) => previousValue + element);
    double percentage = (sum / value.length) * 100;
    if (percentage > maxPercentage) {
      maxPercentage = percentage;
      maxListKey = key;
    }
  });
  print(
      'Highest attendance percentage is: $maxListKey, Percentage: ${maxPercentage.toStringAsFixed(2)}%');
}
