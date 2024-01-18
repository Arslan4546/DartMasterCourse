void main(List<String> args) {
  // Example usage of the calculateAverage function
  print(calculateAverage([1, 2, 3, 4, 5, 6]));
}

// Function to calculate the average of a list of integers
double calculateAverage(List<int> numbers) {
  // Check if the input list is not empty
  if (numbers.isEmpty) {
    return 0; // Return 0 for an empty list or you can choose to handle it differently
  }

  // Calculate the sum of numbers using the fold method
  int sum = numbers.fold(0, (previous, next) => previous + next);

  // Calculate the average by dividing the sum by the number of elements in the list
  double average = sum / numbers.length;

  // Return the calculated average
  return average;
}
