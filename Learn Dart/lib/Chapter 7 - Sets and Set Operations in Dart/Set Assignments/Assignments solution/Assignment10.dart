import 'dart:io';

void main() {
  // Input: Take a set as input from the user
  print('Enter elements of the set separated by space:');
  String inputString = stdin.readLineSync()!;
  List<String> inputList = inputString.split(' ');

  // Generate and display the power set
  List<List<String>> powerSet = [[]]; // Initialize with the empty set

  for (var element in inputList) {
    int currentLength = powerSet.length;

    // Add current element to existing subsets
    for (int i = 0; i < currentLength; i++) {
      List<String> subset = List.from(powerSet[i]);
      subset.add(element);
      powerSet.add(subset);
    }
  }

  // Display the power set
  print('\nPower Set:');
  for (var subset in powerSet) {
    print(subset);
  }
}
