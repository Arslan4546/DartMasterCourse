import 'dart:io';

void main(List<String> args) {
  // Outer loop for rows in the pattern
  for (int i = 1; i <= 5; i++) {
    // Inner loop for printing numbers in each row
    for (int j = 1; j <= i; j++) {
      // Print the current row number
      stdout.write("$i");
    }
    // Move to the next line after printing numbers in the current row
    print("");
  }
}
