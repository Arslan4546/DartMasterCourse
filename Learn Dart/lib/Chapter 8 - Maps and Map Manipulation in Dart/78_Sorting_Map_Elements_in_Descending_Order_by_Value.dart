void main(List<String> args) {
  // Sorting Map Elements in Descending Order by Value

  Map<String, int> map = {'Apple': 3, 'Banana': 1, 'Orange': 2};

  // Step 1: Convert map entries to a list
  List<MapEntry<String, int>> sortedEntries = map.entries.toList();

  // Step 2: Sort the list by value in descending order
  sortedEntries.sort((a, b) => b.value.compareTo(a.value));

  // Step 3: Iterate over the sorted list
  for (var entry in sortedEntries) {
    print('${entry.key}: ${entry.value}');
  }

  // Iterating over Map Elements with forEach()

  map.forEach((key, value) {
    print('$key: $value');
  });
}
