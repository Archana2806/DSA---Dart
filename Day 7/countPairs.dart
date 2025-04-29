/*
Count Pairs with Given Sum
Problem:
Given an array of integers and a target sum, count the number of unique pairs that add up to the target.
A pair is considered unique if you haven't counted it before regardless of order, i.e., (2,3) is same as (3,2).

Examples:
Input: s = "anagram", t = "nagaram"
Output: true

Input: s = "rat", t = "car"
Output: false
*/

int countPairs(List<int> nums, int target) {
  Set<int> seen = {}; // To keep track of numbers we've seen
  Set<String> pairs = {}; // To keep track of unique pairs

  for (int num in nums) {
    int complement = target - num; // The number we need to find a pair with

    if (seen.contains(complement)) {
      // If we have seen the complement, we can form a pair
      String pair = '${num < complement ? num : complement},${num < complement ? complement : num}';
      pairs.add(pair); // Add the unique pair to the set
    }

    seen.add(num); // Add the current number to the seen set
  }

  return pairs.length; // The number of unique pairs found
}
