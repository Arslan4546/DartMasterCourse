void main(List<String> args) {
  // more about fixed length list

  // Filled Method: List.filled(3, [])
  final shared = List.filled(3, []);
  print(shared);
  // this will generate three empty list in a parent list

  shared[0].add(444);
  print(shared);
  // this will assign 44 to an empty list that is placed on 0 index

  // List<E>.generate constructor
  final unique = List.generate(3, (_) => []);
  print(unique);
  unique[1].add(444);
  print(unique);
  // same as above

  // take another example with growable: true
  List<int> growableList =
      List.generate(3, (int index) => index * index, growable: true);
  print(growableList); // [0, 1, 4]
  growableList.add(
      34); // if the growable was false then you cannot add further elemements in this list
  print(growableList);

  List<int> newLst = List.from(growableList);
  print("New List : $newLst");
  // From Method is Used to make this copy of the previous list

  // take another example with growable: false
  List<int> growableList2 =
      List.generate(3, (int index) => index * index, growable: false);
  print(growableList2); // [0, 1, 4]
  // if you set growable is false then you cannot add further item in this list

  List<int> newLst2 = List.from(growableList2);
  print("New List : $newLst2");
  // make the copy of the previous list

  // List<E>.unmodifiable constructor
  // Creates an unmodifiable list containing all elements.
  // An unmodifiable list cannot have its length or elements changed. If the elements are themselves immutable, then the resulting list is also immutable.

  List numbers = <int>[1, 2, 3];
  final unmodifiableList = List.unmodifiable(numbers); // [1, 2, 3]
  unmodifiableList[1] = 87; // Throws.
  print(unmodifiableList);
  //this means if you pass a normal list in the parameter of unmodifiable then that list will be the unmodifiable
}
