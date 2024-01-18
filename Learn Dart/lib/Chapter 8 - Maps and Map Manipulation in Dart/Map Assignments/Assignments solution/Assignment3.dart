void main(List<String> args) {
  // Given the list of employees' salaries
  List<int> employeeList = [5000, 4300, 33400, 1200];

  // Creating an empty map to store the names and salaries of the employees
  Map<String, int> myMap = {};

  // Adding names with their corresponding salaries to the map
  myMap["Arslan"] = employeeList[0];
  myMap["Mannan"] = employeeList[1];
  myMap["Hannan"] = employeeList[2];
  myMap["Rizwan"] = employeeList[3];

  // Printing the map with employees' names and salaries
  print("Employee Information:");
  print(myMap);

  // Finding the average of all employees' salaries
  num average = employeeList.fold(0, (previous, next) => previous + next) /
      employeeList.length;

  // Printing the average salary
  print("The average salary is: $average");
}
