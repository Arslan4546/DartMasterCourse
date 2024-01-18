import 'dart:io';

void main(List<String> args) {
  List<Map<String, dynamic>> taskList = [];

  while (true) {
    print("\nWELCOME TO TASK MANAGEMENT SYSTEM");
    print("1. Adding tasks");
    print("2. Set priority of the specific task");
    print("3. Set date for the specific task");
    print("4. Display task by priority");
    print("5. Mark as complete task");
    print("6. Exit");

    print("Please enter your choice:");
    int userChoice = int.parse(stdin.readLineSync()!);

    // Menu options
    if (userChoice == 1) {
      addTask(taskList);
    } else if (userChoice == 2) {
      setPriority(taskList);
    } else if (userChoice == 3) {
      setDate(taskList);
    } else if (userChoice == 4) {
      displayPriority(taskList);
    } else if (userChoice == 5) {
      markTask(taskList);
    } else if (userChoice == 6) {
      exit(0);
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}

// Function to add tasks to the task list
void addTask(List<Map<String, dynamic>> taskList) {
  print("Enter any 3 tasks:");
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter your task name for task ${i + 1}: ");
    String taskName = stdin.readLineSync()!;
    taskList.add({'task': taskName, 'priority': 0, 'date': '', 'mark': ''});
  }
  print("Successfully added tasks!");
}

// Function to set priority for a specific task
void setPriority(List<Map<String, dynamic>> priorityTask) {
  stdout.write("Enter your task to set the priority: ");
  String task = stdin.readLineSync()!;
  stdout.write("Enter the priority for this task: ");
  String priority = stdin.readLineSync()!;

  for (int i = 0; i < priorityTask.length; i++) {
    if (priorityTask[i]['task'] == task) {
      priorityTask[i]['priority'] = priority;
      print("Set priority successfully!");
      return;
    }
  }
  print("Task not found.");
}

// Function to set date for a specific task
void setDate(List<Map<String, dynamic>> setDateTask) {
  stdout.write("Enter your task to set the date: ");
  String task = stdin.readLineSync()!;
  stdout.write("Enter the date (dd\\mm\\yy) for this task: ");
  String date = stdin.readLineSync()!;

  for (int i = 0; i < setDateTask.length; i++) {
    if (setDateTask[i]['task'] == task) {
      setDateTask[i]['date'] = date;
      print("Set date successfully!");
      return;
    }
  }
  print("Task not found.");
}

// Function to mark a specific task
void markTask(List<Map<String, dynamic>> mark) {
  stdout.write("Enter your task to mark: ");
  String task = stdin.readLineSync()!;
  stdout.write("Enter your mark: ");
  String markc = stdin.readLineSync()!;

  for (int i = 0; i < mark.length; i++) {
    if (mark[i]['task'] == task) {
      mark[i]['mark'] = markc;
      print("Set mark successfully!");
      return;
    }
  }
  print("Task not found.");
}

// Function to display tasks by priority
void displayPriority(List<Map<String, dynamic>> displayBy) {
  if (displayBy.isNotEmpty) {
    for (int i = 0; i < displayBy.length; i++) {
      print("\nTask: ${displayBy[i]["task"]}");
      print("Priority: ${displayBy[i]["priority"]}");
      print("Date: ${displayBy[i]["date"]}");
      print("Mark: ${displayBy[i]["mark"]}");
    }
  } else {
    print("Please enter the task with priority first!");
  }
}
