class Counter {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
    }
  }

  int get counter => _counter;

  @override
  String toString() {
    return '$_counter';
  }
}