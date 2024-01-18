void main(List<String> args) {
  // Creating a contact map
  Map<String, String> myMap = {
    "Arslan": "+923468459907",
    "Mannan": "+923106619363",
    "Hannan": "+923055795960",
    "Rizwan": "+923057795960"
  };

  // Print the initial map
  print("Your map is: $myMap");

  // Accessing the contact number of Arslan
  print("The contact number of Arslan is: ${myMap["Arslan"]}");

  // Updating the contact of Arslan
  myMap["Arslan"] = "+923017573344";

  // Print the map after updating
  print("After updating, your map is: $myMap");

  // Removing the contact of Rizwan
  myMap.remove("Rizwan");

  // Print the map after deletion
  print("After deletion of one contact, your remaining map is: $myMap");
}
