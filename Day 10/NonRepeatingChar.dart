/*
- Find the First Non-Repeating Character:
Write a Dart function that finds the first non-repeating character in a string.
For example:
Input: "swiss"
Output: 'w'
*/

String firstNonRepeatingCharacter(String str) {
  // Create a map to store character counts
  Map<String, int> charCount = {};

  // Count occurrences of each character
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  // Find the first non-repeating character
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (charCount[char] == 1) {
      return char;
    }
  }

  return ''; // Return an empty string if no non-repeating character is found
}

void main() {
  String input = "swiss";
  String result = firstNonRepeatingCharacter(input);
  print(result); // Output: 'w'
}