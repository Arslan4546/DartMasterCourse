import 'dart:io';

void main() {
  // Initialize a variable to count the score
  int score = 0;

  // Welcome the user in the prompt
  print("Welcome to the Quiz!");

  // Question 1
  // Create a set of questions
  Set questionSet1 = {
    """Question 1: \nWhat is the capital of France?"
  a. Berlin
  b. Paris
  c. Rome
  d. Madrid"""
  };
  print(questionSet1);

  // Storing the answer of question 1
  String answer1 = 'b';

  // Asking the user to type the answer for the first question
  stdout.write("Please type your answer for this question:");

  String userAnswer1 = stdin.readLineSync()!;

  // Condition for checking if the user's answer is correct
  if (userAnswer1 == answer1) {
    print("Correct!");
    // If the answer is correct, add one score to the user's score container
    score++;
  } else {
    print("Incorrect. The correct answer is b. Paris.");
  }

  // Question 2
  Set questionSet2 = {
    """Question 2: \nWhich planet is known as the Red Planet?
  a. Mars
  b. Venus
  c. Jupiter
  d. Saturn"""
  };
  print(questionSet2);

  // Storing the answer of question 2
  String answer2 = 'a';

  // Asking the user to enter the user's answer
  stdout.write("Please type your answer for this question:");

  String userAnswer2 = stdin.readLineSync()!;

  // Condition to check if user's answer is correct according to question 2
  if (userAnswer2 == answer2) {
    print("Correct!");
    score++;
  } else {
    print("Incorrect. The correct answer is a. Mars.");
  }

  // Question 3
  Set questionSet3 = {
    """Question 3: \nWhat is the capital of Japan?"
  a. Beijing
  b. Tokyo
  c. Seoul
  d. Bangkok"""
  };
  print(questionSet3);

  // Storing the answer of question 3
  String answer3 = 'b';

  stdout.write("Type your answer for this question:");

  String userAnswer3 = stdin.readLineSync()!;

  // Condition to check if the user's answer is correct according to question 3
  if (userAnswer3 == answer3) {
    print("Correct!");
    score++;
  } else {
    print("Incorrect. The correct answer is b. Tokyo.");
  }

  // Display the final score of the user's attempt
  print("Your final score: $score out of 3");
}
