/*
- Check if a Number is a Perfect Square
Write a Dart function to determine whether a given number is a perfect square.
For example:
- Input: 16 → Output: true
- Input: 20 → Output: false
*/

bool isPerfectSquare(int num) {
  if (num < 0) return false; // Negative numbers cannot be perfect squares
  
  int left = 0, right = num;
  
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int square = mid * mid;
    
    if (square == num) {
      return true; // Found the perfect square
    } else if (square < num) {
      left = mid + 1; // Search in the right half
    } else {
      right = mid - 1; // Search in the left half
    }
  }
  
  return false; // No perfect square found
}

void main() {
  int num1 = 16;
  int num2 = 20;
  
  print('Is $num1 a perfect square? ${isPerfectSquare(num1)}'); // Output: true
  print('Is $num2 a perfect square? ${isPerfectSquare(num2)}'); // Output: false
}