/*
- Find the Single Element in an Array (Every Other Element Appears Twice)
Write a Dart function that finds the unique number in an array where every other number appears exactly twice.
For example:
- Input: [2, 3, 5, 2, 3]
- Output: 5
*/

int findSingleElement(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num; // XOR operation
  }
  return result;
}

void main() {
  List<int> nums = [2, 3, 5, 2, 3];
  
  int singleElement = findSingleElement(nums);
  
  print('The single element in the array is: $singleElement');
}