/*
- Implement a Simple Cache (Like LRU, but Easier)
- Start with a basic key-value store that holds a fixed number of items.
- If the cache exceeds capacity, remove the oldest item.
- Example:
- put(1, "A"), put(2, "B"), get(1) → returns "A"
- If the cache is full, remove the first inserted item.
*/

class SimpleCache<K, V> {
  final int capacity;
  final Map<K, V> _cache = {};
  final List<K> _keys = [];

  SimpleCache(this.capacity);

  void put(K key, V value) {
    if (_cache.length >= capacity) {
      K oldestKey = _keys.removeAt(0);
      _cache.remove(oldestKey);
    }
    _cache[key] = value;
    _keys.add(key);
  }

  V? get(K key) {
    return _cache[key];
  }
}

void main() {
  SimpleCache<int, String> cache = SimpleCache<int, String>(3);

  cache.put(1, "A");
  cache.put(2, "B");
  print(cache.get(1)); // Output: A

  cache.put(3, "C");
  cache.put(4, "D"); // This will remove the oldest item (1, "A")

  print(cache.get(1)); // Output: null (1 has been removed)
  print(cache.get(2)); // Output: B
  print(cache.get(3)); // Output: C
  print(cache.get(4)); // Output: D
}