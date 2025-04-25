/*
First Non-Repeating Character in a String
Problem: Given a string, return the index of the first non-repeating character. If none exists, return -1.

Input:  "flutter"
Output: 0  // 'f' is not repeated

Input:  "success"
Output: 2  // 'c' is the first non-repeating character

Input:  "aabbcc"
Output: -1  // all characters repeat
*/

int firstUniqueChar(String s) {
  Map<String, int> freq = {};

  for (int i = 0; i < s.length; i++) { // Iterate through the string
    // Count the frequency of each character
    String char = s[i];
    freq[char] = (freq[char] ?? 0) + 1; // Increment the count for the character
  }

  for (int i = 0; i < s.length; i++) { // Iterate again to find the first unique character
    // Check if the character is unique (frequency is 1)
    if (freq[s[i]] == 1) return 1;
  }
  return -1;
}

void main() {
  String str1 = "flutter";
  String str2 = "success";
  String str3 = "aabbcc";

  print("First non-repeating character in '${str1}': ${firstUniqueChar(str1)}");
  print("First non-repeating character in '${str2}': ${firstUniqueChar(str2)}");
  print("First non-repeating character in '${str3}': ${firstUniqueChar(str3)}");
}
