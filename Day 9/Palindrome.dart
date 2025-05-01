/*
Check for Palindrome:
Write a Dart function that checks if a given string is a palindrome (reads the same forward and backward).
For example:
Input: "racecar"
Output: true
Input: "hello"
Output: false
*/

bool isPalindrome(String str) {
  // Convert the string to lowercase and remove spaces
  String cleanedStr = str.toLowerCase().replaceAll(' ', '');
  // Check if the cleaned string is equal to its reverse
  return cleanedStr == cleanedStr.split('').reversed.join('');
}

void main() {
  String input1 = "racecar";
  String input2 = "hello";
  
  bool result1 = isPalindrome(input1);
  bool result2 = isPalindrome(input2);
  
  print('$input1 is a palindrome: $result1'); // Output: racecar is a palindrome: true
  print('$input2 is a palindrome: $result2'); // Output: hello is a palindrome: false
}