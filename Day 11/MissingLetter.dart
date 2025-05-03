/*
- Find the Missing Letter in an Alphabetical Sequence
Write a Dart function that finds the missing letter in a given sequence of letters (assuming exactly one letter is missing).
For example:
Input: ['a', 'b', 'c', 'e', 'f']
Output: 'd'
*/

String findMissingLetter(List<String> letters) {
  // Convert letters to their ASCII values
  List<int> asciiValues = letters.map((letter) => letter.codeUnitAt(0)).toList();

  // Sort the ASCII values
  asciiValues.sort();

  // Find the missing letter
  for (int i = 0; i < asciiValues.length - 1; i++) {
    if (asciiValues[i] + 1 != asciiValues[i + 1]) {
      return String.fromCharCode(asciiValues[i] + 1);
    }
  }

  return ''; // Return an empty string if no missing letter is found
}

void main() {
  List<String> letters = ['a', 'b', 'c', 'e', 'f'];
  String missingLetter = findMissingLetter(letters);
  print(missingLetter); // Output: 'd'
}