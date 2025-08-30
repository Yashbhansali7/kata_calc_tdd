import 'package:kata_calc_tdd/kata_calc_tdd.dart';
import 'package:test/test.dart';

void main() {
  group("kata calculator add test cases", () {
    // Positive Flows
    test('return 0 for empty input string', () {
      expect(KataCalculator.add(""), 0);
    });

    test('returns 1 for single input number: 1', () {
      expect(KataCalculator.add("1"), 1);
    });

    test('returns 4 for single input number: 4', () {
      expect(KataCalculator.add("4"), 4);
    });

    test('returns 6 for single input number: 4,2', () {
      expect(KataCalculator.add("4,2"), 6);
    });

    test('returns 2 for single input number: 0,2', () {
      expect(KataCalculator.add("0,2"), 2);
    });

    test('returns -2 for single input number: -1,-1', () {
      expect(KataCalculator.add("-1,-1"), -2);
    });

    // Negative Flows
    test('throws not a number error for input: ABC', () {
      String input = 'ABC';
      expect(
        () => KataCalculator.add(input),
        throwsA(
          predicate((e) {
            return e is Exception &&
                e.toString().contains(
                  'Given $input input it not a valid number',
                );
          }),
        ),
      );
    });
  });
}
