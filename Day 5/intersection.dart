/*
Intersection of Two Arrays
Problem: Given two arrays, return an array of their intersection.
Each element in the result must be unique.

Examples:
Input:  nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]

Input:  nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4] or [4,9]  (Order doesn't matter)
*/

List<int> intersection(List<int> nums1, List<int> nums2) {
  Set<int> set1 = nums1.toSet(); // Convert first array to a set for O(1) lookups
  Set<int> resultSet = {}; // To store the intersection result

  for (int num in nums2) {
    if (set1.contains(num)) {
      resultSet.add(num); // Add to result if present in the first set
    }
  }

  return resultSet.toList(); // Convert the set back to a list
}

void main() {
  List<int> nums1 = [1, 2, 2, 1]; // output: [2]
  List<int> nums2 = [2, 2];
  List<int> nums3 = [4, 9, 5]; // output: [9,4] or [4,9]
  List<int> nums4 = [9, 4, 9, 8, 4];

  print("Intersection of $nums1 and $nums2: ${intersection(nums1, nums2)}"); // Output: [2]
  print("Intersection of $nums3 and $nums4: ${intersection(nums3, nums4)}"); // Output: [9,4] or [4,9]
}