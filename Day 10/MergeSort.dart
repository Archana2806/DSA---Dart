/*
- Merge Two Sorted Arrays:
Write a Dart function that takes two sorted arrays and merges them into a single sorted array.
For example:
Input: [1, 3, 5] and [2, 4, 6]
Output: [1, 2, 3, 4, 5, 6]
*/

List<int> mergeSortedArrays(List<int> arr1, List<int> arr2) {
  List<int> mergedArray = [];
  int i = 0, j = 0;

  // Merge the two arrays while there are elements in both
  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      mergedArray.add(arr1[i]);
      i++;
    } else {
      mergedArray.add(arr2[j]);
      j++;
    }
  }

  // Add any remaining elements from arr1
  while (i < arr1.length) {
    mergedArray.add(arr1[i]);
    i++;
  }

  // Add any remaining elements from arr2
  while (j < arr2.length) {
    mergedArray.add(arr2[j]);
    j++;
  }

  return mergedArray;
}

void main() {
  List<int> arr1 = [1, 3, 5];
  List<int> arr2 = [2, 4, 6];
  List<int> mergedArray = mergeSortedArrays(arr1, arr2);
  print(mergedArray); // Output: [1, 2, 3, 4, 5, 6]
}