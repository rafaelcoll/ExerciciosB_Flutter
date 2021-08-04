class Adder {
  int _number1;
  int _number2;

  Adder(this._number1, this._number2);

  int get number1 => _number1;

  int get number2 => _number2;

  int get sum => _number1 + _number2;

}