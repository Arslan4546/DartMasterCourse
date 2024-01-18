import 'dart:io';

void main(List<String> args) {
  // Define quiz questions and options for different categories
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

  // Display a welcome message to the user
  print("\n WELCOME TO QUIZ CENTER:");

  // Infinite loop to keep the quiz running until the user decides to exit
  while (true) {
    // Initialize the score counter for each quiz category
    int countScore = 0;

    // Prompt the user to enter the quiz category (Science, Math, GK)
    print("PLEASE ENTER THE QUIZ CATEGORY [SCIENCE, MATH, GK]");
    String userChoice = stdin.readLineSync()!;
    userChoice = userChoice.toLowerCase();

    // Check the user's choice and run the corresponding quiz
    if (userChoice == "science") {
      int i = 0;

      // Iterate through each question in the Science quiz
      while (i < quizScience.length) {
        // Display the current question
        print(quizScience[i]['question']);
        print("Enter your answer:");

        // Read the user's answer
        String answer = stdin.readLineSync()!;

        // Check if the answer is correct and update the score
        if (answer == quizScience[i]['options'][1]) {
          countScore++;
        } else {
          print("Sorry, wrong answer!");
        }
        i++;
      }
    } else if (userChoice == "math") {
      int i = 0;

      // Iterate through each question in the Math quiz
      while (i < quizMath.length) {
        // Display the current question
        print(quizMath[i]['question']);
        print("Enter your answer:");

        // Read the user's answer
        String answer = stdin.readLineSync()!;

        // Check if the answer is correct and update the score
        if (answer == quizMath[i]['options'][0] ||
            answer == quizMath[i]['options'][1] ||
            answer == quizMath[i]['options'][3]) {
          countScore++;
        } else {
          print("Sorry, wrong answer!");
        }
        i++;
      }
    } else if (userChoice == "gk") {
      int i = 0;

      // Iterate through each question in the General Knowledge quiz
      while (i < quizGknowledge.length) {
        // Display the current question
        print(quizGknowledge[i]['question']);
        print("Enter your answer:");

        // Read the user's answer
        String answer = stdin.readLineSync()!;

        // Check if the answer is correct and update the score
        if (answer == quizGknowledge[i]['options'][0] ||
            answer == quizGknowledge[i]['options'][1] ||
            answer == quizGknowledge[i]['options'][3]) {
          countScore++;
        } else {
          print("Sorry, wrong answer!");
        }
        i++;
      }
    } else {
      print("You entered an invalid choice");
    }

    // Ask the user if they want to see the score
    print("Would you like to see the score for this quiz?");
    print("If yes, type 'yes'; if not, type 'no'");
    String userChoiceScore = stdin.readLineSync()!;

    // Display the score if the user chooses to see it
    if (userChoiceScore.toLowerCase() == "yes") {
      print("Your score for the category $userChoice is $countScore out of 3");
    } else if (userChoiceScore.toLowerCase() == "no") {
      // Exit the program if the user chooses not to see the score
      return;
    } else {
      print("Invalid choice");
    }
  }
}
