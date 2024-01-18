// Create a user authentication system using a map to store usernames and passwords. Implement functionality to register new users, authenticate existing users, and change passwords.
import 'dart:io';

void main(List<String> args) {
  //create a databse containing username and passwords

  Map<String, int> authenticateSystem = {
    "arslan": 4546,
    "rizwan": 1122,
    "hannan": 6677,
    "mannan": 8899
  };
  //print the database to user

  print("your existig 'username' and 'password' database is here!");

  print(authenticateSystem);

  //asking user for his choice for adding new username and password

  print("\nwould you like to add 'userName' and 'password' in yoursystem.");

  print("if 'yes' then type yes, if not then type 'not'.");

  //user's choice will store in this variable

  String userInput = stdin.readLineSync()!;

  //add new user if this condition meets

  if (userInput == "yes") {
    print("please enter 'userName' and 'Password'.");

    //store both things in these container

    String userName = stdin.readLineSync()!;

    int passWord = int.parse(stdin.readLineSync()!);

    authenticateSystem[userName] = passWord;

    //if user's choice no then it wil go forward
  } else if (userInput == "no") {
    print("adding new user skipped!");

    //it will display a message if the program meets else condition
  } else {
    print("you enter 'invalide' option.");
  }
  //asking user to autentication

  print("please authenticate your identity.");

  //ask user for his choice

  print("if 'yes' then type yes, if not then type 'not'.");

  //store user's choice into this variable

  String userInput1 = stdin.readLineSync()!;

  //if this condition meets it can work according to if condition

  if (userInput1 == "yes") {
    //ask user to enter username and password

    print("enter your' userName' and 'password'.");

    //both will store into these variables

    String demoUserName = stdin.readLineSync()!;

    int demoPassword = int.parse(stdin.readLineSync()!);

    //it display the authentication message if this condition meets

    if (authenticateSystem.containsKey(demoUserName) &&
        authenticateSystem.containsValue(demoPassword)) {
      print("GREAT! your username and password matched!");

      //display else message if else condition meets
    } else {
      print("SHIT! your 'username' and 'password' does not match");
    }
    //if user enter no in terminal  then it will print the following message
  } else if (userInput1 == "no") {
    print('authentication skipped');
    //display this message if this condition meets
  } else {
    print("you enter invalide option.");
  }
  //ask user to change the passord

  print("are you intrested in changing password.");

  print("if 'yes' then type yes, if not then type 'not'.");

  //store user's choice into this variable

  String userInput2 = stdin.readLineSync()!;

  //perform this funtion if the if-condition meets

  if (userInput2 == "yes") {
    //asking user to update the password for his existing usenames

    print("please enter your existing username and updated password.");
    //store both username and password into these variables

    String newUserName = stdin.readLineSync()!;

    int newPassword = int.parse(stdin.readLineSync()!);

    authenticateSystem[newUserName] = newPassword;

    //perform else operation if it meets
  } else if (userInput2 == "no") {
    print('change password skipped!');
    //perform when this condition will meets
  } else {
    print("you enter invalide option.");
  }
  //print the resultant database of usernames and passwords
  print("your final database is here!");
  print(authenticateSystem);
}
