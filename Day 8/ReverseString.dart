/*
Reverse a String:
Write a Dart function that takes a string as input and returns the string reversed.
For example:
Input: "hello"
Output: "olleh"
*/

String reverseString(String str) {
  // Convert the string to a list of characters, reverse it, and join it back to a string
  return str.split('').reversed.join('');
}

void main() {
  String input = "hello";
  String reversed = reverseString(input);
  print(reversed); // Output: "olleh"
}