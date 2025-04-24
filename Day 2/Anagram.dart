/*
Valid Anagram
Goal: Given two strings s and t, return true if t is an anagram of s, and false otherwise.

What’s an Anagram?
A word formed by rearranging the letters of another.
Input:  s = "listen", t = "silent"
Output: true

Input:  s = "hello", t = "holle"
Output: true

Input:  s = "hello", t = "world"
Output: false
*/

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false; // Early exit if lengths differ

  List<String> sList = s.split('')..sort();
  List<String> tList = t.split('')..sort();
  // Sort both strings and convert to lists of characters

  return sList.join() == tList.join(); // Compare sorted strings
}

void main() {
  print(isAnagram("listen", "silent")); // true
  print(isAnagram("hello", "holle")); // true
  print(isAnagram("hello", "world")); // false
}

// Using hashMap for counting characters
// bool isAnagramUsingHashMap(String s, String, t) {
//   if (s.length != t.length) return false; // Early exit if lengths differ

//   Map<String, int> charCount = {}; // Initialize a map to count characters
//   for (int i = 0; i < s.length; i++) {
//     charCount[s[i]] = (charCount[s[i]] ?? 0) + 1;
//     charCount[t[i]] = (charCount[t[i]] ?? 0) - 1;
//   }
// }
