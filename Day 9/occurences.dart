/*
Count the Occurrences of a Character:
Write a Dart function that takes a string and a character, then returns the count of how often the character appears in the string.
For example:
Input: ("banana", 'a')
Output: 3
*/

int countOccurrences(String str, String char) {
  // Use the where method to filter the characters in the string
  // and then use the length property to count them
  return str.split('').where((c) => c == char).length;
}

void main() {
  String inputString = "banana";
  String inputChar = 'a';
  
  int count = countOccurrences(inputString, inputChar);
  
  print('The character "$inputChar" appears $count times in the string "$inputString".'); // Output: The character "a" appears 3 times in the string "banana".
}