/*
Sum of Array Elements:
Write a Dart function that takes an array of integers as input and returns the sum of all elements in the array.
For example:
Input: [1, 2, 3, 4, 5]
Output: 15
*/

int sumOfArray(List<int> arr) {
  // Use the reduce method to sum all elements in the array
  return arr.reduce((a, b) => a + b);
}

void main() {
  List<int> input = [1, 2, 3, 4, 5];
  int sum = sumOfArray(input);
  print(sum); // Output: 15
}