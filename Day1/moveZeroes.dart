/*
Move All Zeroes to End (In-place)
Given: A list of integers
Goal: Move all 0s to the end while maintaining the relative order of the non-zero elements.
Do it in-place. No extra list.

Input:  [0, 1, 0, 3, 12]
Output: [1, 3, 12, 0, 0]
*/

void moveZeroes(List<int> nums) {
  int insertPos = 0; // Position to insert non-zero elements
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[insertPos] = nums[i]; // Move non-zero element to the insert position
      insertPos++;
    }
  }

  // Fill the rest of the array with zeroes
  for (int i = insertPos; i < nums.length; i++) {
    nums[i] = 0;
  }
}

void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  moveZeroes(nums);
  print(nums);
}
