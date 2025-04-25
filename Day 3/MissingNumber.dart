/*
Find the Missing Number
Problem: You are given an array containing n distinct numbers taken from the range 0 to n. Find the one number that is missing from the array.

Input:  [3, 0, 1]
Output: 2

Input:  [0, 1]
Output: 2
*/

int missingNumber(List<int> nums) {
  int n = nums.length;
  int expectedSum = (n * (n + 1)) ~/ 2; // Sum of first n natural numbers
  int actualSum =
      nums.reduce((a, b) => a + b); // Sum of the elements in the array
  return expectedSum - actualSum; // The missing number is the difference between expected and actual sum
}

void main() {
  List<int> nums1 = [3, 0, 1];
  List<int> nums2 = [0, 1];

  print("Missing number in ${nums1}: ${missingNumber(nums1)}"); // Output: 2
  print("Missing number in ${nums2}: ${missingNumber(nums2)}"); // Output: 2
}
