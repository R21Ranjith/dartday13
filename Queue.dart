class Queue<T> {
  final List<T> _items = [];

  void enqueue(T item) => _items.add(item);

  T dequeue() {
    if (_items.isEmpty) {
      throw StateError("Queue is empty, cannot dequeue.");
    }
    return _items.removeAt(0);
  }

  bool get isEmpty => _items.isEmpty;

  void display() => print("Queue: $_items");
}

void main() {
  var queue = Queue<String>();
  queue.enqueue("Alice");
  queue.enqueue("Bob");
  queue.enqueue("Charlie");
  queue.display();

  print("Dequeued: ${queue.dequeue()}");
  queue.display();
}
