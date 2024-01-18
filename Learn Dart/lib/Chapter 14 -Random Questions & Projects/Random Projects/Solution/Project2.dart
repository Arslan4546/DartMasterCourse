import 'dart:io';

void main(List<String> args) {
  // List to store employee data as maps
  List<Map<String, dynamic>> employeeList = [
    {
      "name": "arslan",
      "department": "computer science",
      "designation": "HOB",
      "salary": 50000
    },
    {
      "name": "asif",
      "department": "AI",
      "designation": "DEAN",
      "salary": 30000
    },
    {
      "name": "sheraz",
      "department": "BBA",
      "designation": "VC",
      "salary": 10000
    }
  ];

  // Main loop for the Employee Management System
  while (true) {
    // Displaying the main menu
    print("WELCOME TO EMPLOYEE MANAGEMENT SYSTEM:");
    print("1.ADD EMPLOYEE DATA");
    print("2.UPDATE EMPLOYEE DATA");
    print("3.REMOVE EMPLOYEE FROM THE ORGANIZATION");
    print("4.CHECK ELIGIBILITY OF EMPLOYEE FOR PROMOTION");
    print("5.EXIT");
    print("\nENTER YOUR OPTION:");

    // Reading user input
    int userInput = int.parse(stdin.readLineSync()!);

    // Handling user input
    if (userInput == 1) {
      // Adding new employee data
      print("ENTER THE NAME OF EMPLOYEE:");
      String name = stdin.readLineSync()!;
      print("ENTER THE DEPARTMENT OF EMPLOYEE:");
      String department = stdin.readLineSync()!;
      print("ENTER THE DESIGNATION OF EMPLOYEE:");
      String designation = stdin.readLineSync()!;
      print("ENTER THE SALARY OF EMPLOYEE:");
      int salary = int.parse(stdin.readLineSync()!);

      // Adding the new employee to the list
      employeeList.add({
        "name": name,
        "department": department,
        "designation": designation,
        "salary": salary
      });

      // Confirmation message
      print("THIS EMPLOYEE HAS BEEN SUCCESSFULLY ADDED!");
    } else if (userInput == 2) {
      // Updating existing employee data
      print("ENTER THE NAME OF EMPLOYEE FOR HIS UPDATION:");
      String empName = stdin.readLineSync()!;
      bool found = false;

      // Searching for the employee in the list
      for (int i = 0; i < employeeList.length; i++) {
        if (employeeList[i]["name"] == empName) {
          found = true;
          print("ENTER HIS UPDATED DEPARTMENT:");
          String dept = stdin.readLineSync()!;
          print("ENTER HIS UPDATED DESIGNATION:");
          String desig = stdin.readLineSync()!;
          print("ENTER HIS UPDATED SALARY:");
          int salary = int.parse(stdin.readLineSync()!);

          // Updating employee data
          employeeList[i]["department"] = dept;
          employeeList[i]["designation"] = desig;
          employeeList[i]["salary"] = salary;

          // Confirmation message
          print("YOUR THIS EMPLOYEE HAS BEEN SUCCESSFULLY UPDATED!");
          break;
        }
      }

      // Message if the employee is not found
      if (!found) {
        print("THIS EMPLOYEE IS NOT PRESENT IN THIS ORGANIZATION");
      }
    } else if (userInput == 3) {
      // Removing an employee from the list
      print("ENTER THE NAME OF EMPLOYEE THAT YOU WANT TO REMOVE:");
      String name = stdin.readLineSync()!;
      bool found = false;

      // Searching for the employee in the list
      for (int i = 0; i < employeeList.length; i++) {
        if (employeeList[i]["name"] == name) {
          found = true;
          // Removing the employee
          employeeList.removeAt(i);

          // Confirmation message
          print("REMOVED SUCCESSFULLY!");
          break;
        }
      }

      // Message if the employee is not found
      if (!found) {
        print("THIS EMPLOYEE IS NOT PRESENT IN THE ORGANIZATION");
      }
    } else if (userInput == 4) {
      // Checking promotion eligibility
      print("ENTER THE NAME OF EMPLOYEE TO CHECK THE PROMOTION ELIGIBILITY:");
      String name = stdin.readLineSync()!;
      bool found = false;

      // Searching for the employee in the list
      for (int i = 0; i < employeeList.length; i++) {
        if (employeeList[i]["name"] == name) {
          found = true;

          // Checking promotion eligibility based on salary
          if (employeeList[i]["salary"] >= 50000) {
            print("THIS EMPLOYEE IS ELIGIBLE FOR PROMOTION");
          } else {
            print("THIS EMPLOYEE IS NOT ELIGIBLE FOR PROMOTION");
          }

          break;
        }
      }

      // Message if the employee is not found
      if (!found) {
        print("THIS EMPLOYEE IS NOT PRESENT IN THE ORGANIZATION");
      }
    } else if (userInput == 5) {
      // Exiting the program
      exit(0);
    } else {
      // Invalid input
      print("INVALID INPUT!");
    }
  }
}
