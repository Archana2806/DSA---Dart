/*
Find Missing Number
Problem: Given an array containing n distinct numbers taken from 0, 1, 2, ..., n,
find the one number that is missing from the array.

Input:  [3, 0, 1]
Output: 2

Input:  [9,6,4,2,3,5,7,0,1]
Output: 8
*/

int missingNumber(List<int> nums) {
  int n = nums.length; // Length of the array
  int expectedSum = (n * (n + 1)) ~/ 2; // Sum of first n natural numbers
  int actualSum = nums.reduce((a, b) => a + b); // Sum of the array elements
  return expectedSum - actualSum; // The missing number is the difference
}

void main() {
  List<int> nums1 = [3, 0, 1]; // output: 2
  List<int> nums2 = [9, 6, 4, 2, 3, 5, 7, 0, 1]; // output: 8

  print("Missing number in $nums1: ${missingNumber(nums1)}"); // Output: 2
  print("Missing number in $nums2: ${missingNumber(nums2)}"); // Output: 8
}
