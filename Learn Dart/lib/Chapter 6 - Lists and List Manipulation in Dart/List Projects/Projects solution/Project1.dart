import 'dart:io';

void main(List<String> args) {
  //Create an empty list called studentScores.
  List<int> studentScores = [];

  int count = 0;
  //asking user to enter the score for students
  print("ENTER THE SCORE OF YOUR STUDENTS:");

//Prompt the user to enter the scores of five students one by one. Add each score to the studentScores list

  for (int i = 0; i < 5; i++) {
    count++;
    int n = int.parse(stdin.readLineSync()!);

    studentScores.add(n);
  }
  //print the list of all students

  print("THE LIST OF YOUR STUDENT IS :${studentScores}");

  // getting sum of all the students score
  int addList = studentScores.fold(0, (first, nex) => first + nex);

  //print the sum of all students score
  print("THE AVERAGE SCORE OF TOTAL STUDENT IS : ${addList / count}");

  // Using a loop to find the maximum element

  // Assume the first element is the maximum in the list
  int maxScore = studentScores[0];

  // for loop for finding greatest score in the list

  for (int i = 1; i < studentScores.length; i++) {
    if (studentScores[i] > maxScore) {
      maxScore = studentScores[i];
    }
  }

  print('THE HIGHEST SCORE IS : $maxScore');

  //asume that the first element is smaller in the list

  int minScore = studentScores[0];

  // for loop for finding smaller element in the list

  for (int i = 1; i < studentScores.length; i++) {
    if (studentScores[i] < minScore) {
      minScore = studentScores[i];
    }
  }
  print("THE MINIMUM SCORE IS  :$minScore");

  //sorting the student score list

  studentScores.sort();

  print("THE SORTED LIST IS : $studentScores");

  //creatig a copy list of student score list

  List copyList = [...studentScores];

  //removing the first two elements in the list
  copyList.removeRange(0, 2);
  List myList = [...copyList];

  print("THE LIST OF TOP SCORRER IS :${myList}");

  //removing the smaller element from the topper list

  copyList.removeAt(0);

  // making another copy of list

  List afterRemove = List.from(copyList);
  print(
      "AFTER REMOVING THE LOWEST SCORE FROM THE TOPPEST SCORE LIST:${afterRemove}");

  // asking from user to add score for one more student

  stdout.write("ENTER SCORE FOR ONE MORE STUDENT:");

  int addOne = int.parse(stdin.readLineSync()!);

  //adding in the actual list of students

  studentScores.add(addOne);
  //sorting the studentscore list

  studentScores.sort();

  //adding new score in toppers list

  myList.add(addOne);

  //sorting the copyList  list

  myList.sort();

  //print the updated studentscore list

  print(" THE STUDENTSCORE LIST IS UPDATED :${studentScores}");

  //also printing the updated top scorer list

  print("THE TOP SCORRER LIST ALSO UPDATED :${myList} ");
}
