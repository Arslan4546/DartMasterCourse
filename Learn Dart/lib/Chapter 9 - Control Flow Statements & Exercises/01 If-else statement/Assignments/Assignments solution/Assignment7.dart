import 'dart:io';

void main(List<String> args) {
  // Creating an empty map to store student names and marks
  Map myMap = {};

  // Looping to get names and marks for 4 students
  for (int i = 0; i < 4; i++) {
    // Prompting the user to enter the student's name
    print("Enter the name:");
    String name = stdin.readLineSync()!;

    // Prompting the user to enter the student's marks
    print("Enter the marks:");
    int marks = int.parse(stdin.readLineSync()!);

    // Adding the name and marks to the map
    myMap[name] = marks;
  }

  // Calculating the average marks of all students
  double sum = 0;
  myMap.forEach((key, value) {
    sum += value;
  });
  double average = sum / myMap.length;
  print("The average marks of students is: ${average}");

  // Sorting the map by marks in descending order
  var sortedMap = myMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Displaying the sorted map
  print("Your sorted map is here:");
  sortedMap.forEach((entry) {
    print('${entry.key}: ${entry.value}');
  });

  // Checking if the sorted map is not empty
  if (sortedMap.isNotEmpty) {
    // Getting the entry with the highest marks
    MapEntry<dynamic, dynamic> topEntry = sortedMap.first;
    String topStudentName = topEntry.key;
    int topStudentMarks = topEntry.value;

    // Displaying the student with the highest marks
    print("The highest marks in the map:");
    print('${topStudentName}: ${topStudentMarks}');
  }
}
