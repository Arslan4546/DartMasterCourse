import 'dart:io';

void main(List<String> args) {
  // Creating three empty sets
  Set<int> setA = {};
  Set<int> setB = {};
  Set<int> setC = {};

  // Asking the user to add elements to setA
  print("Enter your elements for setA:");

  // For loop for adding elements to setA
  for (int i = 1; i <= 5; i++) {
    int Avalue = int.parse(stdin.readLineSync()!);
    setA.add(Avalue);
  }

  // Asking the user to add elements to setB
  print("Enter your elements for setB:");

  // For loop for adding elements to setB
  for (int i = 1; i <= 5; i++) {
    int Bvalue = int.parse(stdin.readLineSync()!);
    setB.add(Bvalue);
  }

  // Asking the user to add elements to setC
  print("Enter the elements for setC:");

  // For loop for adding elements to setC
  for (int i = 1; i <= 5; i++) {
    int Cvalue = int.parse(stdin.readLineSync()!);
    setC.add(Cvalue);
  }

  // Print all sets
  print("Set A: $setA");
  print("Set B: $setB");
  print("Set C: $setC");

  // Perform set operations
  Set<int> unionSet = setA.union(setB).union(setC);
  Set<int> intersectionSet = setA.intersection(setB).intersection(setC);
  Set<int> differenceSet = setA.difference(setB).difference(setC);

  // Print the resultant output
  print("Union of sets (A U B U C): $unionSet");
  print("Intersection of sets (∩): $intersectionSet");
  print("Difference of sets (A - B - C): $differenceSet");
}
