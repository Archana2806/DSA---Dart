/*
- Find All Pairs that Sum to a Given Number
Write a Dart function to find all pairs in an array that add up to a given sum.
For example:
- Input: arr = [1, 2, 3, 4, 5, 6], target = 7
- Output: [(1, 6), (2, 5), (3, 4)]
*/

List<List<int>> findPairs(List<int> arr, int target) {
  List<List<int>> pairs = [];
  Set<int> seen = Set<int>();

  for (int num in arr) {
    int complement = target - num;
    if (seen.contains(complement)) {
      pairs.add([complement, num]);
    }
    seen.add(num);
  }

  return pairs;
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  int target = 7;

  List<List<int>> pairs = findPairs(arr, target);

  print('Pairs that sum to $target: $pairs');
}