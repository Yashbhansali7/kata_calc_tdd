import 'package:kata_calc_tdd/kata_calc_tdd.dart';
import 'package:test/test.dart';

void main() {
  group("kata calc add test cases ->", () {
    // Positive Flows
    test('return 0 for empty input string', () {
      expect(KataCalculator.add(""), 0);
    });

    test('returns number for single input number', () {
      expect(KataCalculator.add("4"), 4);
      expect(KataCalculator.add("1"), 1);
    });

    test('returns sum for comma seperator input numbers', () {
      expect(KataCalculator.add("4,2"), 6);
      expect(KataCalculator.add("0,2"), 2);
      expect(KataCalculator.add("-1,-1"), -2);
    });

    test('returns sum for new line seperator input numbers', () {
      expect(KataCalculator.add("1\n2"), 3);
      expect(KataCalculator.add("3\n3"), 6);
    });

    test('returns sum for new line & comma seperators input numbers', () {
      expect(KataCalculator.add("1\n2,3"), 6);
      expect(KataCalculator.add("1,2\n3"), 6);
    });

    test('returns sum for custom delimiter input numbers', () {
      expect(KataCalculator.add('//;\n1;2'), 3);
      expect(KataCalculator.add('//-\n1-2-3'), 6);
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
