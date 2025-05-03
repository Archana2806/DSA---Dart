/*
- Rotate an Array to the Right
Write a Dart function that rotates an array k times to the right.
For example:
Input: arr = [1, 2, 3, 4, 5], k = 2
Output: [4, 5, 1, 2, 3]
*/

List<int> rotateArray(List<int> arr, int k) {
  int n = arr.length;
  k = k % n; // Handle cases where k is greater than n
  List<int> rotatedArray = [];

  // Rotate the array
  for (int i = 0; i < n; i++) {
    rotatedArray.add(arr[(i - k + n) % n]);
  }

  return rotatedArray;
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int k = 2;
  List<int> result = rotateArray(arr, k);
  print(result); // Output: [4, 5, 1, 2, 3]
}