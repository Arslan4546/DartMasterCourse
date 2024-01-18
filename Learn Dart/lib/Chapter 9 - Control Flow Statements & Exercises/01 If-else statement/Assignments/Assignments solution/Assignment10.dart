import 'dart:io';

void main() {
  // Initialize a map to store tasks and their priorities
  Map<String, String> toDoList = {};

  // Main loop for the to-do list application
  while (true) {
    print('===== To-Do List =====');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. Display Tasks');
    print('4. Exit');

    // Prompt the user to enter their choice
    stdout.write('Enter your choice (1-4): ');
    String choice = stdin.readLineSync()!;

    // Process the user's choice using a switch statement
    switch (choice) {
      case '1':
        // Add a task to the to-do list
        stdout.write('Enter task description: ');
        String description = stdin.readLineSync()!;

        stdout.write('Enter priority level (low, medium, high):');
        String priority = stdin.readLineSync()!;

        toDoList[description] = priority;
        print('Task added successfully!');
        break;

      case '2':
        // Remove a task from the to-do list
        stdout.write('Enter task description to remove:');
        String description = stdin.readLineSync()!;

        if (toDoList.containsKey(description)) {
          toDoList.remove(description);
          print('Task removed successfully!');
        } else {
          print('Task not found in the to-do list.');
        }
        break;

      case '3':
        // Display tasks with a specific priority level
        stdout.write('Enter priority level to display (low, medium, high):');
        String priorityFilter = stdin.readLineSync()!;

        print('\nTasks with priority $priorityFilter:');
        toDoList.forEach((task, priority) {
          if (priority == priorityFilter) {
            print('$task - Priority: $priority');
          }
        });
        break;

      case '4':
        // Exit the application
        exit(0);

      default:
        // Handle invalid choices
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}
