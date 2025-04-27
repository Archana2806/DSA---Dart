/*
Find the Second Largest Number in the Array
Problem: Given a list of integers, find the second largest unique number.

Input:  [3, 1, 4, 4, 5, 2]
Output: 4

Input:  [10, 10, 9]
Output: 9
*/

int secondLargest(List<int> nums) {
  List<int> uniqueNums = nums.toSet().toList(); // Remove duplicates
  uniqueNums.sort((a, b) => b.compareTo(a)); // Sort in descending order
  if (uniqueNums.length < 2) {
    throw Exception("Not enough unique numbers to find the second largest.");
  }
  return uniqueNums[1]; // Return the second largest number
}

void main() {
  List<int> nums1 = [3, 1, 4, 4, 5, 2]; // output: 4
  List<int> nums2 = [10, 10, 9]; // output: 9

  try {
    print("Second largest in $nums1: ${secondLargest(nums1)}"); // Output: 4
    print("Second largest in $nums2: ${secondLargest(nums2)}"); // Output: 9
  } catch (e) {
    print(e);
  }
}
