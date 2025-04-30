/*
Find the Minimum Element:
Write a Dart function that takes an array of integers as input and returns the smallest element in the array.
For example:
Input: [7, 3, 9, 2, 5]
Output: 2
*/

int findMinimumElement(List<int> arr) {
  // Use the reduce method to find the minimum element in the array
  return arr.reduce((a, b) => a < b ? a : b);
}

void main() {
  List<int> input = [7, 3, 9, 2, 5];
  int minElement = findMinimumElement(input);
  print(minElement); // Output: 2
}
