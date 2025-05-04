/*
- Find the Kth Largest Element in an Array
Write a Dart function that returns the Kth largest element in an unsorted array.
For example:
- Input: arr = [7, 10, 4, 3, 20, 15], k = 3
- Output: 10
*/

int findKthLargest(List<int> nums, int k) {
  // Create a min-heap to keep track of the k largest elements
  List<int> minHeap = [];

  for (int num in nums) {
    minHeap.add(num);
    minHeap.sort(); // Sort the heap after adding a new element

    if (minHeap.length > k) {
      minHeap.removeAt(0); // Remove the smallest element if we have more than k elements
    }
  }

  return minHeap[0]; // The root of the min-heap is the Kth largest element
}

void main() {
  List<int> arr = [7, 10, 4, 3, 20, 15];
  int k = 3;
  
  int kthLargest = findKthLargest(arr, k);
  
  print('The $k-th largest element in the array is: $kthLargest');
}