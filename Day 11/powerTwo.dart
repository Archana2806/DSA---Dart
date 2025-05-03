/*
- Check if a Number is a Power of Two
Write a Dart function to determine whether a given number is a power of 2.
For example:
- Input: 8 → Output: true
- Input: 10 → Output: false
- Input: 32 → Output: true
*/

bool isPowerOfTwo(int n) {
  if (n <= 0) return false; // Negative numbers and zero are not powers of two
  return (n & (n - 1)) == 0; // Check if n is a power of two using bitwise operation
}

void main() {
  List<int> testNumbers = [8, 10, 32, 0, -4];
  for (int number in testNumbers) {
    print('Is $number a power of two? ${isPowerOfTwo(number)}');
  }
}