void main(List<String> args) {
  // Fixed length list

  // Creating a Fixed-Length List
  // There are multiple ways to create a fixed-length list in Dart:

  // 1. Using the List.filled() constructor:

  List<dynamic> myList = List.filled(3, null);
  print(myList);
  print(myList.runtimeType);
  // in this code 3 is length and null are the values in the filled list

  // let's take another example

  final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  print(fixedLengthList); // [0, 0, 0, 0, 0]

  fixedLengthList[0] = 87;
  fixedLengthList.setAll(1, [1, 2, 3]);
  print(fixedLengthList); // [87, 1, 2, 3, 0]
  // the setAll() method will placed a new list from the index 1 onward

  // Fixed length list length can't be changed or increased
  fixedLengthList.length = 0; // Throws
  fixedLengthList.add(499); // Throws
  // this means you cannot add more  items in the list if the list is fixed just like the fixedLengthList above

  // 2. Using the List.generate() constructor:

  List<dynamic> myFixedList = List.generate(3, (index) => null);
  print(myFixedList);
  print(myFixedList.runtimeType);
  // the generate() method will genearate a list and assign this list to new list on the left side of the = operator
  /*
  
    3 represents the length of the list you want to create. In this case, the list will have three elements.

    (index) => null is a function that defines how each element of the list will be generated. The index parameter represents the index of the current element being generated.

    In this specific case, the function (index) => null simply returns null for each element. It means that the resulting list will have three elements, and all elements will be null.

  */

  // Here's an example to demonstrate the usage of List.generate():

  List<int> newList = List.generate(5, (index) => index * 2);
  print(newList);
  // in this code 5 is the length of the list and items are the index*2 or you can add them according to you own requirement

  /*

    In this example, the List.generate() method creates a list of length 5. 
    The function (index) => index * 2 is used to generate each element. 
    
    The function takes the index as a parameter and multiplies it by 2. 
    So, the resulting list will be [0, 2, 4, 6, 8].
  
    You can customize the function inside List.generate() to generate elements based on any desired logic or calculations.

  */
}
