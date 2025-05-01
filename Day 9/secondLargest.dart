/*
Find the Second Largest Number in an Array:
Write a Dart function that finds the second largest number in an array of integers.
For example:
Input: [10, 5, 20, 8, 30]
Output: 20
*/

int findSecondLargest(List<int> arr) {
  // Check if the array has at least two elements
  if (arr.length < 2) {
    throw Exception("Array must contain at least two elements");
  }

  // Initialize the first and second largest variables
  int firstLargest = arr[0];
  int secondLargest = arr[1];

  // Ensure firstLargest is the larger of the two
  if (firstLargest < secondLargest) {
    firstLargest = arr[1];
    secondLargest = arr[0];
  }

  // Iterate through the array to find the second largest number
  for (int i = 2; i < arr.length; i++) {
    if (arr[i] > firstLargest) {
      secondLargest = firstLargest;
      firstLargest = arr[i];
    } else if (arr[i] > secondLargest && arr[i] != firstLargest) {
      secondLargest = arr[i];
    }
  }

  return secondLargest;
}

void main() {
  List<int> input = [10, 5, 20, 8, 30];
  int secondLargest = findSecondLargest(input);
  print(secondLargest); // Output: 20
}