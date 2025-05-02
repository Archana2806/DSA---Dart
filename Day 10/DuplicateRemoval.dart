/*
- Remove Duplicates from an Array:
Write a Dart function that removes duplicate elements from an array and returns the unique elements.
For example:
Input: [1, 2, 2, 3, 4, 4, 5]
Output: [1, 2, 3, 4, 5]
*/

List<int> removeDuplicates(List<int> arr) {
  // Create a set to store unique elements
  Set<int> uniqueElements = {};

  // Iterate through the array and add elements to the set
  for (int num in arr) {
    uniqueElements.add(num);
  }

  // Convert the set back to a list and return it
  return uniqueElements.toList();
}

void main() {
  List<int> input = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueElements = removeDuplicates(input);
  print(uniqueElements); // Output: [1, 2, 3, 4, 5]
}