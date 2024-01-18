import 'dart:io';

void main(List<String> args) {
  print("\n WELCOME TO QUIZ CENTER:");
  int quizCounter = 0;

  // Main loop for the Quiz Center
  while (true) {
    // Displaying the main menu
    print("PLEASE ENTER THE QUIZ CATEGORY:");
    print("1. Mathematics");
    print("2. Science");
    print("3. General Knowledge");
    print("4. Exit");
    int userChoice = int.parse(stdin.readLineSync()!);

    if (userChoice == 1) {
      // Increment quiz counter and start Mathematics quiz
      quizCounter++;
      mathQuiz();
    } else if (userChoice == 2) {
      // Increment quiz counter and start Science quiz
      quizCounter++;
      scienceQuiz();
    } else if (userChoice == 3) {
      // Increment quiz counter and start General Knowledge quiz
      quizCounter++;
      gkQuiz();
    } else if (userChoice == 4) {
      // Display quiz counter and exit the program
      print("You have done $quizCounter quiz");
      if (quizCounter > 0) {
        print("\nThanks for attempting well!");
      } else {
        print("Bad! You didn't attempt any quiz.");
      }
      exit(0);
    } else {
      // Display message for invalid quiz category
      print("\nYou entered an invalid quiz category!");
    }
  }
}

void scienceQuiz() {
  // List of science quiz questions and answers
  List<Map<String, dynamic>> quizScience = [
    {
      'question': 'What is the chemical symbol for water?',
      'options': ['O', 'H2O', 'CO2', 'NaCl'],
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['Earth', 'Mars', 'Venus', 'Jupiter'],
    },
    {
      'question':
          'Which scientist formulated the laws of motion and universal gravitation?',
      'options': [
        'Isaac Newton',
        'Albert Einstein',
        'Galileo Galilei',
        'Nikola Tesla'
      ],
    },
  ];
  int countScore = 0;
  int i = 0;

  // Loop through science quiz questions
  while (i < quizScience.length) {
    print(quizScience[i]["question"]);
    print(quizScience[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW:");
    String answer = stdin.readLineSync()!;

    if (quizScience[i]["options"].contains(answer)) {
      // Check if the answer is correct
      if (answer == "H2O" || answer == "Mars" || answer == "Isaac Newton") {
        countScore++;
      } else {
        print("\nSorry, wrong answer!");
      }
      i++;
    } else {
      // Display message for invalid option
      print("\nYou entered an invalid option");
    }
  }
  print("\nYour score for this quiz category is $countScore out of 3");
}

void mathQuiz() {
  // List of math quiz questions and answers
  List<Map<String, dynamic>> quizMath = [
    {
      'question': 'What is the value of pi (π) to two decimal places?',
      'options': ['3.14', '2.71', '1.62', '4.20'],
    },
    {
      'question': 'What is the square root of 144?',
      'options': ['10', '12', '14', '16'],
    },
    {
      'question': 'Solve for x: 2x - 5 = 11',
      'options': ['3', '4', '5', '6'],
    },
  ];
  int countScore = 0;
  int i = 0;

  // Loop through math quiz questions
  while (i < quizMath.length) {
    print(quizMath[i]["question"]);
    print(quizMath[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW:");
    String answer = stdin.readLineSync()!;

    if (quizMath[i]["options"].contains(answer)) {
      // Check if the answer is correct
      if (answer == "3.14" || answer == "12" || answer == "5") {
        countScore++;
      } else {
        print("\nSorry, wrong answer!");
      }
      i++;
    } else {
      // Display message for invalid option
      print("\nYou entered an invalid option");
    }
  }
  print("\nYour score for this quiz category is $countScore out of 3");
}

void gkQuiz() {
  // List of general knowledge quiz questions and answers
  List<Map<String, dynamic>> quizGknowledge = [
    {
      'question': 'Who won the FIFA World Cup in 2018?',
      'options': ['France', 'Brazil', 'Germany', 'Spain'],
    },
    {
      'question': 'In which sport does LeBron James play?',
      'options': ['Soccer', 'Basketball', 'Tennis', 'Golf'],
    },
    {
      'question': 'Who was the first President of the United States?',
      'options': [
        'George Washington',
        'Abraham Lincoln',
        'Thomas Jefferson',
        'John Adams'
      ],
    },
  ];
  int countScore = 0;
  int i = 0;

  // Loop through general knowledge quiz questions
  while (i < quizGknowledge.length) {
    print(quizGknowledge[i]["question"]);
    print(quizGknowledge[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW");
    String answer = stdin.readLineSync()!;

    if (quizGknowledge[i]["options"].contains(answer)) {
      // Check if the answer is correct
      if (answer == "France" ||
          answer == "Basketball" ||
          answer == "George Washington") {
        countScore++;
      } else {
        print("\nSorry, wrong answer!");
      }
      i++;
    } else {
      // Display message for invalid option
      print("\nYou entered an invalid option");
    }
  }
  print("\nYour score for this quiz category is $countScore out of 3");
}
