import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(""), equals(0));
  });
}
