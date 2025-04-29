/*
Group Anagrams
Problem:
Given a list of strings, group the anagrams together.
You can return the answer in any order.

Examples:
Input: ["eat","tea","tan","ate","nat","bat"]
Output: [["eat","tea","ate"],["tan","nat"],["bat"]]
*/

List<List<String>> groupAnagrams(List<String> strs) {
  Map<String, List<String>> anagrams = {}; // To store grouped anagrams

  for (String str in strs) {
    // Sort the string to find its anagram group
    String sortedStr = String.fromCharCodes(str.codeUnits..sort());
    
    // Add the original string to the corresponding sorted key
    if (!anagrams.containsKey(sortedStr)) {
      anagrams[sortedStr] = [];
    }
    anagrams[sortedStr]!.add(str);
  }

  return anagrams.values.toList(); // Return the grouped anagrams as a list
}