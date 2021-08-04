import 'package:exercicios/counter.dart';
import 'package:test/test.dart';

void main() {
  group('Counter class test', () {
    Counter counterTest;

    test('Object creation test', () {
      counterTest = Counter();
      expect(counterTest.runtimeType, equals(Counter().runtimeType));
    });
    
    test('incrementCounter() method test', () {
      counterTest = Counter();
      counterTest.incrementCounter();
      
      expect(counterTest.counter, equals(1));
    });

    test('decrementCounter() method test', () {
      counterTest = Counter();
      counterTest.incrementCounter();
      counterTest.incrementCounter();
      counterTest.decrementCounter();

      expect(counterTest.counter, equals(1));
    });

    test('decrementCounter() do not descrese to less than zero test', () {
      // decrement a new Counter (value = 0)
      counterTest = Counter();
      counterTest.decrementCounter();
      expect(counterTest.counter, equals(0));

      // decrement a Counter after increment
      counterTest = Counter();
      counterTest.incrementCounter();
      counterTest.decrementCounter();
      counterTest.decrementCounter();
      expect(counterTest.counter, equals(0));
    });
  });
}