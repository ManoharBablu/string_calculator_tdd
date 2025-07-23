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

  test('Multiple numbers returns their sum', () {
    expect(add("1,2,3,4"), 10);
  });

  test('Support newlines as delimiters', () {
    expect(add("1\n2,3"), 6);
  });

  test('Support custom delimiters', () {
    expect(add("//;\n1;2"), 3);
  });

  test('Throw error on negative numbers', () {
    expect(
      () => add("1,-2,3,-4"),
      throwsA(
        predicate(
          (e) =>
              e is Exception &&
              e.toString().contains('negative numbers not allowed -2,-4'),
        ),
      ),
    );
  });
}
