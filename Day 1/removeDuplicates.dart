/*
Remove Duplicates from a Sorted Array
Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once.
Return the number of unique elements.

Example Input: nums = [1, 1, 2, 2, 3]
Output: 3 (with the array modified to [1, 2, 3, _, _])
*/

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int write = 1; // Start with the first element as unique
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[write] = nums[i];
      write++;
    }
  }
  return write;
}

void main() {
  List<int> nums = [1, 1, 2, 2, 3];
  int length = removeDuplicates(nums);
  print("Number of unique elements: $length");
  print("Modified array: ${nums.sublist(0, length)}");
}
