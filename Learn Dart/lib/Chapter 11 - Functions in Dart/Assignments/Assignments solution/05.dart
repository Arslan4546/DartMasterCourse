import 'dart:io';

void main(List<String> args) {
  stdout.write('ENTER A NUMBER: ');
  int number = int.parse(stdin.readLineSync()!);

  // Call the function to print the multiplication table for the entered number
  printTable(number);
}

// Function to print the multiplication table for a given number
void printTable(int n) {
  // Iterate from 1 to 10 to generate the multiplication table
  for (int i = 1; i <= 10; i++) {
    // Print each line of the multiplication table
    print("$n * $i = ${n * i}");
  }
}
