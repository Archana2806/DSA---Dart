/*
- Find the Subarray with Maximum Sum (Kadane’s Algorithm)
Write a Dart function to find the contiguous subarray within a given array that has the largest sum.
For example:
- Input: [−2, 1, −3, 4, −1, 2, 1, −5, 4]
- Output: 6 (Subarray [4, −1, 2, 1] has the maximum sum)
*/

int maxSubArray(List<int> nums) {
  int maxSum = nums[0];
  int currentSum = nums[0];

  for (int i = 1; i < nums.length; i++) {
    currentSum = (currentSum + nums[i] > nums[i]) ? currentSum + nums[i] : nums[i];
    maxSum = (currentSum > maxSum) ? currentSum : maxSum;
  }

  return maxSum;
}

void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  
  int maxSum = maxSubArray(nums);
  
  print('The maximum sum of the contiguous subarray is: $maxSum');
}