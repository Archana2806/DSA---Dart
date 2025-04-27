/*
Find First Unique Character in a String
Problem: Given a string, find the index of the first non-repeating character.
If no such character exists, return -1.

Examples:
Input: "leetcode"
Output: 0

Input: "loveleetcode"
Output: 2

Input: "aabb"
Output: -1
*/

int firstUniqChar(String s) {
  Map<String, int> charCount = {}; // To store character counts
  for (int i = 0; i < s.length; i++) { // // Count occurrences of each character
    String char = s[i];
    charCount[char] = (charCount[char] ?? 0) + 1; // Increment count
  }

  // Find the index of the first unique character
  for (int i = 0; i < s.length; i++) {
    if (charCount[s[i]] == 1) {
      return i; // Return index of first unique character
    }
  }

  return -1; // Return -1 if no unique character found
}
