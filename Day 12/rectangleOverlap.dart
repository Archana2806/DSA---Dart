/*
- Check if Two Rectangles Overlap
Write a Dart function that checks whether two rectangles overlap based on their coordinates. Each rectangle is defined by its bottom-left and top-right corners.
For example:
- Input: Rect1: [(0, 0), (2, 2)], Rect2: [(1, 1), (3, 3)]
- Output: true
*/

bool doRectanglesOverlap(List<List<int>> rect1, List<List<int>> rect2) {
  // Unpack the coordinates of the rectangles
  int x1 = rect1[0][0], y1 = rect1[0][1];
  int x2 = rect1[1][0], y2 = rect1[1][1];
  int x3 = rect2[0][0], y3 = rect2[0][1];
  int x4 = rect2[1][0], y4 = rect2[1][1];

  // Check if one rectangle is to the left of the other
  if (x1 >= x4 || x3 >= x2) return false;
  
  // Check if one rectangle is above the other
  if (y1 >= y4 || y3 >= y2) return false;

  return true; // Rectangles overlap
}

void main() {
  List<List<int>> rect1 = [[0, 0], [2, 2]];
  List<List<int>> rect2 = [[1, 1], [3, 3]];

  bool overlap = doRectanglesOverlap(rect1, rect2);

  print('Do the rectangles overlap? $overlap');
}