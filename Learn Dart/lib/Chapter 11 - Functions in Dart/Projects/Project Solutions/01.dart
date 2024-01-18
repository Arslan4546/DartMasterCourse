import 'dart:io';

void main(List<String> args) {
  // Map to store student information (name as key, list of marks as value)
  Map myMap = {
    "Arslan": [12, 22, 33],
    "Mannan": [43, 65, 76],
    "Hannan": [12, 54, 87]
  };

  // Menu-driven Student Management System
  while (true) {
    print("\nWELCOME TO STUDENT MANAGEMENT SYSTEM");
    print("1. Adding student information");
    print("2. Calculating average grade for each student");
    print("3. Displaying students and their grades");
    print("4. Displaying overall class performance");
    print("5. Exit");

    print("Please enter your choice:");
    int userChoice = int.parse(stdin.readLineSync()!);

    // Menu options
    if (userChoice == 1) {
      addStudentInfo(myMap);
    } else if (userChoice == 2) {
      calculatingAverageGrades(myMap);
    } else if (userChoice == 3) {
      displayStudentInfo(myMap);
    } else if (userChoice == 4) {
      displayOverAllPerformance(myMap);
    } else if (userChoice == 5) {
      exit(0);
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}

// Function to add student information to the map
void addStudentInfo(Map studentInfo) {
  stdout.write("Enter the name of the student:");
  String name = stdin.readLineSync()!;
  print('Enter the marks of the student:');
  List tempList = [];
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter marks$i for this student:");
    int marks = int.parse(stdin.readLineSync()!);
    tempList.add(marks);
  }
  studentInfo[name] = tempList;

  print("Successfully added student information!");
}

// Function to calculate and display the average grades for each student
void calculatingAverageGrades(Map studentInfo) {
  print("The average marks for each student are:");
  Map averageMap = {};

  studentInfo.forEach((key, value) {
    num sum = value.fold(0, (a, b) => a + b);
    int average = sum ~/ 3;
    averageMap[key] = average;
  });
  print("$averageMap");
}

// Function to display all student information
void displayStudentInfo(Map studentInfo) {
  print("Student Information:");
  print(studentInfo);
}

// Function to display the overall performance of the class
void displayOverAllPerformance(Map studentInfo) {
  int count = 0;
  int sumAdd = 0;
  studentInfo.forEach((key, value) {
    int sum = value.fold(0, (a, b) => a + b);
    sumAdd += sum;
    count++;
  });
  print(
      "The overall performance score of the class students is ${sumAdd / count}");
}
