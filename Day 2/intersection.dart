/*
Intersection of Two Arrays (Easy + Logic Refinement)
Given: Two integer arrays nums1 and nums2
Goal: Return an array of unique elements present in both arrays.

Example:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2] 
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4]
*/

// List<int> intersection (List <int> nums1, List <int> nums2) {
//   // Convert the first list to a set to remove duplicates
//   Set<int> set1 = nums1.toSet();
//   // Convert the second list to a set to remove duplicates
//   Set<int> set2 = nums2.toSet();
//   // Find the intersection of both sets and convert it back to a list
//   List<int> result = set1.intersection(set2).toList();
//   return result;
// }

List<int> intersection(List<int> nums1, List<int> nums2) {
  Set<int> set1 = nums1.toSet();
  Set<int> result = {};

  for (int num in nums2) {
    if (set1.contains(num)) {
      result.add(num);
    }
  }
  return result.toList();
}

void main() {
  print(intersection([1, 2, 2, 1], [2, 2]));
  print(intersection([4, 9, 5], [9, 4, 9, 8, 4]));
}