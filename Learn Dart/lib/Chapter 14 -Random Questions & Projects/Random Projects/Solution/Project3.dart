import 'dart:io';

void main(List<String> args) {
  // List to store recipes
  List<Map<String, dynamic>> recipes = [
    {
      'category': "Asian",
      'ingredients': ["Chicken Breast", "Vegetables", "Soy Sauce"],
      'instructions': [
        "Slice chicken.",
        "Stir-fry with vegetables.",
        "Add soy sauce."
      ]
    },
    {
      'category': "Pasta",
      'ingredients': ["Spaghetti", "Ground Beef", "Tomato Sauce"],
      'instructions': [
        "Boil spaghetti.",
        "Cook ground beef.",
        "Mix with tomato sauce."
      ]
    }
  ];

  // Infinite loop for the recipe management system
  while (true) {
    print("\nWELCOME TO RECIPE ");
    print("1. ADD RECIPE ");
    print("2. SEARCH RECIPE BY CATEGORY");
    print("3. DELETE RECIPE");
    print("4. EXIT");
    print("\nENTER YOUR OPTION:");

    // Handling user options
    int userInput = int.parse(stdin.readLineSync()!);

    if (userInput == 1) {
      addnewRecipie(recipes);
    } else if (userInput == 2) {
      searchRecipe(recipes);
    } else if (userInput == 3) {
      deleteRecipe(recipes);
    } else if (userInput == 4) {
      exit(0);
    } else {
      print("INVALID OPTION!");
    }
  }
}

// Function to add a new recipe
void addnewRecipie(List<Map<String, dynamic>> addRec) {
  stdout.write("ENTER YOUR CATEGORY:");
  String catagory = stdin.readLineSync()!;

  print("ENTER YOUR INGREDIENTS (3 items):");
  List ingrediants = [];
  for (int i = 0; i <= 3; i++) {
    String ingre = stdin.readLineSync()!;
    ingrediants.add(ingre);
  }

  print("ENTER YOUR INSTRUCTIONS (3 steps):");
  List instructions = [];
  for (int i = 0; i <= 3; i++) {
    String ins = stdin.readLineSync()!;
    instructions.add(ins);
  }

  // Adding the new recipe to the list
  addRec.add({
    "catagory": catagory,
    "instructions": instructions,
    "ingrediants": ingrediants
  });
}

// Function to search for a recipe by category
void searchRecipe(List<Map<String, dynamic>> searchRec) {
  stdout.write("ENTER THE CATEGORY OF YOUR RECIPE:");
  String category = stdin.readLineSync()!;
  bool found = false;

  // Loop through recipes to find and print the matching category
  for (int i = 0; i < searchRec.length; i++) {
    if (searchRec[i]['category'] == category) {
      print(searchRec[i]);
      found = true;
      break; // Exit the loop after printing the first match
    }
  }

  // Display a message if the category is not found
  if (!found) {
    print("Category not found");
  }
}

// Function to delete a recipe by category
void deleteRecipe(List<Map<String, dynamic>> deleteRec) {
  stdout.write("ENTER THE CATEGORY OF YOUR RECIPE:");
  String category = stdin.readLineSync()!;
  bool found = false;

  // Loop through recipes to find and delete the matching category
  for (int i = 0; i < deleteRec.length; i++) {
    if (deleteRec[i]['category'] == category) {
      deleteRec.removeAt(i);
      print("SUCCESSFULLY DELETED!");
      found = true;
      break; // Exit the loop after deleting
    }
  }

  // Display a message if the category is not found
  if (!found) {
    print("Category not found");
  }
}
