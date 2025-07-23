import 'package:test/test.dart';
import 'package:string_calculator_tdd/string_calculator_tdd.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(""), equals(0));
  });

  test('Single number returns the number itself', () {
    expect(add("5"), equals(5));
  });

  test('Two numbers returns their sum', () {
    expect(add("1,2"), equals(3));
  });
}
