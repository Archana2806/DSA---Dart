/*
Reverse Words in a String
Problem: Given a string s, reverse the order of words.
Words are separated by spaces. Remove extra spaces between words too.

Example:
Input:  "  the sky   is  blue  "
Output: "blue is sky the"

Input:  "archana is learning"
Output: "learning is archana"
*/

String reverseWords(String s) {
  List<String> words = s.trim().split(RegExp(r'\s+')); // Split the string by whitespace and remove extra spaces
  words = words.reversed.toList(); // Reverse the list of words
  return words.join(' '); // Join the words back into a single string with spaces
}
