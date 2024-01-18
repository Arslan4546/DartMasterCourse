// Define the main function that serves as the entry point of the program.
void main(List<String> args) {
  // Declare and initialize a string variable 'name'.
  String name = "arslan";

  // Initialize an empty string 'name1' to store the reversed version of 'name'.
  String name1 = "";

  // Iterate through the characters of 'name' in reverse order.
  for (int i = name.length - 1; i >= 0; i--) {
    // Build the reversed string 'name1' by appending characters in reverse order.
    name1 += name[i];
  }

  // Print the reversed string 'name1'.
  print("Reversed Name: $name1");

  // Initialize an empty string 'name2'.
  String name2 = "";

  // Iterate through the characters of 'name' in the original order.
  for (int i = 0; i <= name.length - 1; i++) {
    // Build the string 'name2' by appending characters in the original order.
    name2 += name[i];
  }

  // Print the original string 'name2'.
  print("Original Name: $name2");
}
