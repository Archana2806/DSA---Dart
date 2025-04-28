/*
Find the Intersection of Two Arrays
Problem:
Given two arrays, return an array that contains the common elements (intersection) between them.
Each element in the result must be unique.

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]

Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9] // order does not matter
*/

List<int> intersection(List<int> nums1, List<int> nums2) {
  Set<int> set1 = nums1.toSet(); // Convert first array to a set for O(1) lookups
  Set<int> resultSet = {}; // To store the intersection

  for (int num in nums2) { // Iterate through the second array
    if (set1.contains(num)) { // If the number is in the first set
      resultSet.add(num); // Add to the result set
    }
  }

  return resultSet.toList(); // Convert the result set back to a list and return it
}

void main() {
  // Test cases
  print(intersection([1, 2, 2, 1], [2, 2])); // Output: [2]
  print(intersection([4, 9, 5], [9, 4, 9, 8, 4])); // Output: [4, 9]
  print(intersection([1, 2, 3], [4, 5, 6])); // Output: []
}