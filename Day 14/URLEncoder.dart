/*
- Basic URL Encoder & Decoder
- Start with a simple encoder-decoder function.
- Convert a string into a shortened format and decode it back.
- Example:
- Input: "hello world" → Encoded: "aGVsbG8gd29ybGQ=" (Base64)
- Decode it back to "hello world"
*/

import 'dart:convert';

String encode(String input) {
  // Convert the string to bytes and then to Base64
  List<int> bytes = utf8.encode(input);
  String encoded = base64.encode(bytes);
  return encoded;
}

String decode(String encoded) {
  // Decode the Base64 string back to bytes and then to a string
  List<int> bytes = base64.decode(encoded);
  String decoded = utf8.decode(bytes);
  return decoded;
}

void main() {
  String original = "hello world";
  String encoded = encode(original);
  String decoded = decode(encoded);

  print('Original: $original');
  print('Encoded: $encoded');
  print('Decoded: $decoded');
}