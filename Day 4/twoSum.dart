/*
Find All Pairs That Sum to a Target
Problem: Given a list of integers and a target number, find all pairs of numbers that add up to the target.

Examples:
Input:  nums = [2, 7, 11, 15], target = 9
Output:  [(2, 7)]

Input: nums = [1, 5, 7, -1, 5], target = 6
Output: [(1, 5), (1, 5), (7, -1)]
*/

List<List<int>> twoSum(List<int> nums, int target) {
  List<int> seen = []; // To keep track of numbers we've seen
  List<List<int>> pairs = []; // To store the pairs that sum to target
  for (int num in nums) {
    int complement = target - num; // Calculate the complement
    if (seen.contains(complement)) {
      pairs.add([complement, num]); // Add the pair to the result
    }
    seen.add(num); // Add the current number to the seen list
  }
  return pairs; // Return the list of pairs
}

void main() {
  List<int> nums1 = [2, 7, 11, 15]; // output: [(2, 7)]
  int target1 = 9;
  List<int> nums2 = [1, 5, 7, -1, 5]; // output: [(1, 5), (1, 5), (7, -1)]
  int target2 = 6;

  print("Pairs in $nums1 that sum to $target1: ${twoSum(nums1, target1)}"); // Output: [(2, 7)]
  print("Pairs in $nums2 that sum to $target2: ${twoSum(nums2, target2)}"); // Output: [(1, 5), (1, 5), (7, -1)]
}
