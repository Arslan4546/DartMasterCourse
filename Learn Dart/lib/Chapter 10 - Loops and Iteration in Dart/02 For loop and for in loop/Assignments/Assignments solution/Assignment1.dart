import 'dart:io';

void main(List<String> args) {
  // Prompt the user to enter a number
  stdout.write('ENTER A NUMBER :');
  int a = int.parse(stdin.readLineSync()!);

  // Print a message indicating that the multiplication table is being displayed
  print("Your table of $a number is here!");

  // Iterate from 1 to 10 to generate the multiplication table
  for (int i = 1; i <= 10; i++) {
    // Print each line of the multiplication table
    print("$a * $i = ${a * i}");
  }
}
