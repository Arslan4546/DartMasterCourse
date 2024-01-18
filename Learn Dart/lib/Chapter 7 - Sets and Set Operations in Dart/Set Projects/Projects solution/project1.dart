import 'dart:io';

void main(List<String> args) {
  // Creating two empty sets
  Set<int> setA = {};
  Set<int> setB = {};

  // Ask the user to enter elements for setA
  print("Enter elements for setA:");

  // For loop for adding elements to setA
  for (int i = 1; i <= 5; i++) {
    int Avalue = int.parse(stdin.readLineSync()!);

    // Adding elements to setA one by one
    setA.add(Avalue);
  }

  // Ask the user to enter elements for setB
  print("Enter elements for setB:");

  // For loop for adding elements to setB
  for (int i = 1; i <= 5; i++) {
    int Bvalue = int.parse(stdin.readLineSync()!);

    // Adding elements to setB one by one
    setB.add(Bvalue);
  }

  // Simply print setA and setB
  print("Set A: $setA");
  print("Set B: $setB");

  // Perform set operations
  Set<int> unionSet = setA.union(setB);
  Set<int> intersectionSet = setA.intersection(setB);
  Set<int> differenceSet = setA.difference(setB);

  // Print the result
  print("Union of sets (A U B): $unionSet");
  print("Intersection of sets (∩): $intersectionSet");
  print("Difference of sets (A - B): $differenceSet");
}
