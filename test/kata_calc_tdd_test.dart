import 'package:kata_calc_tdd/kata_calc_tdd.dart';
import 'package:test/test.dart';

void main() {
  group("kata calc add test cases ->", () {
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

    test('returns sum: 6 for comma seperator input numbers: 4,2', () {
      expect(KataCalculator.add("4,2"), 6);
    });

    test('returns sum: 2 for comma seperator input numbers: 0,2', () {
      expect(KataCalculator.add("0,2"), 2);
    });

    test('returns sum: -2 for comma seperator input numbers: -1,-1', () {
      expect(KataCalculator.add("-1,-1"), -2);
    });

    test('returns sum: 3 for new line seperator input numbers: 1\n2', () {
      expect(KataCalculator.add("4,2"), 6);
    });

    test(
      'returns sum: 6 for new line & comma seperator input numbers: 1\n2,3',
      () {
        expect(KataCalculator.add("4,2"), 6);
      },
    );

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
