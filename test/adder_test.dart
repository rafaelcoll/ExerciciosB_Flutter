import 'package:exercicios/adder.dart';
import 'package:test/test.dart';

void main() {
  group('Adder class test', () {
    Adder adderTest;

    test('Object creation test', () {
      adderTest = Adder(1,2);
      expect(adderTest.runtimeType, equals(Adder));
    });

    test('sum method test', () {
      adderTest = Adder(4,2);

      expect(adderTest.sum, equals(6));
    });

    test('sum one negative number with negative result test', () {
      adderTest = Adder(5,-6);

      expect(adderTest.sum, equals(-1));
    });

    test('sum one negative number with positive result test', () {
      adderTest = Adder(6,-1);

      expect(adderTest.sum, equals(5));
    });

    test('sum two negative numbers test', () {
      adderTest = Adder(-5,-1);

      expect(adderTest.sum, equals(-6));
    });
  });
}