/*
Find All Duplicates in an Array
Problem:
Given an integer array nums of length n where elements appear either once or twice,
return all the elements that appear twice.

Examples:
Input: [4,3,2,7,8,2,3,1]
Output: [2,3]

Input: [1,1,2]
Output: [1]
*/

List<int> findDuplicates(List<int> nums) {
  List<int> duplicates = []; // To store duplicate elements
  Set<int> seen = {}; // To track seen elements

  for (int num in nums) { // Iterate through the array
    if (seen.contains(num)) { // If the number is already seen
      duplicates.add(num); // Add to duplicates list
    } else {
      seen.add(num); // Otherwise, add to seen set
    }
  }

  return duplicates; // Return the list of duplicates
}
