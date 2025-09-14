class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);

  T pop() {
    if (_items.isEmpty) {
      throw StateError("Stack is empty, cannot pop.");
    }
    return _items.removeLast();
  }

  bool get isEmpty => _items.isEmpty;

  void display() => print("Stack: $_items");
}

void main() {
  var stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.display();

  print("Popped: ${stack.pop()}");
  stack.display();
}
