/*
- Find the Shortest Path in an Unweighted Graph (BFS Approach)
- Start with Breadth-First Search (BFS) for shortest paths in an unweighted graph.
- Example:
- Input: { "A": ["B", "C"], "B": ["C", "D"], "C": ["D"], "D": [] }
- Find the shortest path from "A" to "D" → Output: ["A", "B", "D"]
*/

import 'dart:collection';

List<String> findShortestPath(Map<String, List<String>> graph, String start, String end) {
  Queue<List<String>> queue = Queue(); // Queue to store paths
  Set<String> visited = {}; // Track visited nodes

  queue.add([start]); // Start with the initial node

  while (queue.isNotEmpty) {
    List<String> path = queue.removeFirst(); // Get the first path from the queue
    String lastNode = path.last; // Get the last node in the current path

    if (lastNode == end) {
      return path; // Found the shortest path
    }

    if (!visited.contains(lastNode)) {
      visited.add(lastNode); // Mark node as visited

      for (String neighbor in graph[lastNode] ?? []) {
        List<String> newPath = List.from(path)..add(neighbor); // Create a new path
        queue.add(newPath); // Add new path to the queue
      }
    }
  }

  return []; // Return empty list if no path exists
}

void main() {
  Map<String, List<String>> graph = {
    "A": ["B", "C"],
    "B": ["C", "D"],
    "C": ["D"],
    "D": []
  };

  List<String> shortestPath = findShortestPath(graph, "A", "D");
  print(shortestPath); // Output: ["A", "B", "D"]
}

