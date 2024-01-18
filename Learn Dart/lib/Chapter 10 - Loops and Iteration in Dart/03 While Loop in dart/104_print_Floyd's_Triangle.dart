import 'dart:io';

void main(List<String> args) {
  int rows = 5;
  int number = 1;
  int i = 1;

  while (i <= rows) {
    int j = 1;
    while (j <= i) {
      stdout.write('$number ');
      number++;
      j++;
    }
    i++;
    print('\n');
  }
}
