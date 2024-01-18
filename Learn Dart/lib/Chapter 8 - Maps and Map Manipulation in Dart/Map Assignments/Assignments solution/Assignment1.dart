import 'dart:io';

void main(List<String> args) {
  // Asking the user to enter the name of a student
  stdout.write("Enter the name of the student: ");

  // Storing the entered name in the variable 'name'
  String name = stdin.readLineSync()!;

  // Creating a map of student grades
  Map<String, int> myMap = {
    "Arslan": 45,
    "Mannan": 50,
    "Hannan": 60,
    "Rizwan": 70,
  };

  // Condition to check if the name of the student exists in the map
  if (myMap.containsKey(name)) {
    print("The grade of $name is: ${myMap[name]}");
  } else {
    // Print a message if the student is not found in the list
    print("This student is not found in our student list.");
  }
}
