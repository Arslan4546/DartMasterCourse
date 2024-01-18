void main() {
  // Creating a 3x3 matrix
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  // Initializing variables for finding the maximum value and sum in the matrix
  int max = matrix[0][0];
  int sum = 0;

  // Print the original matrix
  print("ORIGINAL MATRIX IS :");

  // For loop for traversing each element in the matrix
  for (int i = 0; i < matrix.length; i++) {
    // Print each row of the matrix
    print(matrix[i]);

    // Nested for loop for adding each element to the variable sum
    for (int j = 0; j < matrix[i].length; j++) {
      // Add the element to the sum
      sum += matrix[i][j];

      // Condition for checking if the current element is greater than max
      if (matrix[i][j] > max) {
        // Update max until the greatest element in the matrix is found
        max = matrix[i][j];
      }
    }
  }

  // Print the sum and maximum value of the matrix
  print("THE SUM OF ALL THE ELEMENTS IN THE MATRIX : $sum");
  print("MAXIMUM VALUE IN THIS MATRIX: $max");

  // Transpose the matrix
  List<List<int>> transposedMatrix = [];

  for (int i = 0; i < matrix[0].length; i++) {
    List<int> row = [];
    for (int j = 0; j < matrix.length; j++) {
      // Add each transposed element to the new row
      row.add(matrix[j][i]);
    }
    // Add the row to the transposed matrix
    transposedMatrix.add(row);
  }

  // Print the transpose of the original matrix
  print("TRANSPOSE OF THE ABOVE MATRIX IS :");
  for (int i = 0; i < transposedMatrix.length; i++) {
    // Print each row of the transposed matrix
    print(transposedMatrix[i]);
  }

  // Multiply each element in the transposed matrix by 2 and print the updated matrix
  print(" AFTER MULTIPLICATION THE UPDATED MATRIX IS :");
  for (int i = 0; i < transposedMatrix.length; i++) {
    List<int> row = [];
    for (int j = 0; j < transposedMatrix[i].length; j++) {
      // Multiply each transposed element by 2 and add to the new row
      row.add(transposedMatrix[i][j] * 2);
    }
    // Print the updated row
    print(row);
  }
}
