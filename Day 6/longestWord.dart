/*
Find the Longest Word in a Sentence
Problem:
Given a string (sentence), return the longest word in the sentence.
If multiple words have the same maximum length, return the first one that appears.

Examples:
Input: "The quick brown fox jumped over the lazy dog"
Output: "jumped"

Input: "I love to code in Dart"
Output: "love"
*/


String longestWord(String sentence) {
  List<String> words = sentence.split(' '); // Split the sentence into words
  String longest = ''; // Initialize the longest word

  for (String word in words) { // Iterate through each word
    if (word.length > longest.length) { // If the current word is longer than the longest found so far
      longest = word; // Update the longest word
    }
  }

  return longest; // Return the longest word found
}

void main() {
  // Test cases
  print(longestWord("The quick brown fox jumped over the lazy dog")); // Output: "jumped"
  print(longestWord("I love to code in Dart")); // Output: "love"
  print(longestWord("Hello world")); // Output: "Hello"
  print(longestWord("Dart is a programming language")); // Output: "programming"
}