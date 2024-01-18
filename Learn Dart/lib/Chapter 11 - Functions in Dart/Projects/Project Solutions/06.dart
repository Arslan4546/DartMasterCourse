import 'dart:io';

void main(List<String> args) {
  print("\n WELCOME TO QUIZ CENTER:");
  int quizCounter = 0;
  while (true) {
    print("PLEASE ENTER THE QUIX CATAGORY:");
    print("1.mathamtics");
    print("2.sciece");
    print("3.general knowledge");
    print("4.Exit");
    int userChoice = int.parse(stdin.readLineSync()!);

    if (userChoice == 1) {
      quizCounter++;
      mathQuiz();
    } else if (userChoice == 2) {
      quizCounter++;
      scienceQuiz();
    } else if (userChoice == 3) {
      quizCounter++;
      gkQuiz();
    } else if (userChoice == 4) {
      print("your have done $quizCounter quiz");
      if (quizCounter > 0) {
        print("\nthanks for attempting well!");
      } else {
        print("BAD! you don't try to attempt any quiz");
      }

      exit(0);
    } else {
      print("\nyour enter invalid quiz catagory!");
    }
  }
}

void scienceQuiz() {
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

  while (i < quizScience.length) {
    print(quizScience[i]["question"]);
    print(quizScience[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW:");
    String answer = stdin.readLineSync()!;
    if (quizScience[i]["options"].contains(answer)) {
      if (answer == "H2O" ||
          answer == "Mars" ||
          answer == "Isaac Newton" ||
          answer == "Blue Whale") {
        countScore++;
      } else {
        print("\nsorr wrong answer!");
      }
      i++;
    } else {
      print("\nyou enter invalid option");
    }
  }
  print("\nyour score for this quiz catagory is $countScore out of 3");
}

void mathQuiz() {
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

  while (i < quizMath.length) {
    print(quizMath[i]["question"]);
    print(quizMath[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW:");
    String answer = stdin.readLineSync()!;
    if (quizMath[i]["options"].contains(answer)) {
      if (answer == "3.14" || answer == "12" || answer == "8") {
        countScore++;
      } else {
        print("\nsorr wrong answer!");
      }
      i++;
    } else {
      print("\nyou enter invalid option");
    }
  }
  print("\nyour score for this quiz catagory is $countScore out of 3");
}

void gkQuiz() {
  List<Map<String, dynamic>> quizGknowlege = [
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

  while (i < quizGknowlege.length) {
    print(quizGknowlege[i]["question"]);
    print(quizGknowlege[i]["options"]);
    print("\nENTER YOUR ANSWER BELOW");
    String answer = stdin.readLineSync()!;
    if (quizGknowlege[i]["options"].contains(answer)) {
      if (answer == "France" ||
          answer == "Basketball" ||
          answer == "George Washington" ||
          answer == "1945") {
        countScore++;
      } else {
        print("\nsorr wrong answer!");
      }
      i++;
    } else {
      print("\nyou enter invalid option");
    }
    print("\nyour score for this quiz catagory is $countScore out of 3");
  }
}
