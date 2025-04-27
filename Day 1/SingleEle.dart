/*
Find the Single Element
Given: A non-empty list of integers where every element appears twice except for one.
Goal: Find the element that appears only once.

Input:  [2, 2, 1]
Output: 1

Input:  [4, 1, 2, 1, 2]
Output: 4
*/

int SingleNumber(List<int> nums) {
  Map<int, int> freq = {};

  for (int num in nums) {
    freq[num] = (freq[num] ?? 0) + 1;
  }

  for (var entry in freq.entries) {
    if (entry.value == 1) return entry.key;
  }
  return -1;
}

void main() {
  List<int> nums1 = [2, 2, 1];
  List<int> nums2 = [4, 1, 2, 1, 2];

  print("Single number in ${nums1}: ${SingleNumber(nums1)}");
  print("Single number in ${nums2}: ${SingleNumber(nums2)}");
}
