import 'package:kata_calc_tdd/kata_calc_tdd.dart';
import 'package:test/test.dart';

void main() {
  group("kata calculator add test cases", () {
    test('return 0 for empty input number', () {
      expect(KataCalculator.add(""), 0);
    });
  });
}
