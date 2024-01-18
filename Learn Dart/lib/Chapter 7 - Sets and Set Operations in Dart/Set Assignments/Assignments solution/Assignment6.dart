void main(List<String> args) {
  //creating a string type
  Set<String> mySet = {
    'Arslan',
    'Asif',
    'Sheraz',
    'sohial',
    'khubaib',
    'Zeeshan',
    'Ejaz',
    'Aqsam',
    'Ali Akmal'
  };
  //iterate over the string set one by one until the condition meets
  //using the takeWhiel() method
  Iterable<String> resultantSet =
      mySet.where((name) => name.startsWith("a") || name.startsWith("A"));
  //print the resultant set that contains our desire conditions
  print("your names that starts with letter a/A are :${resultantSet.toSet()}");
}
