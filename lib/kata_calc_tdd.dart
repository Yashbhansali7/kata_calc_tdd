class KataCalculator {
  static int add(String inputNumbers) {
    // Returning 0 if the given input is Empty
    if (inputNumbers.isEmpty) return 0;

    String allowedSeperators = ",|\n";
    String numString = inputNumbers;

    // For custom delimiters
    final delimiters = RegExp(r'^//(.+)\n');
    final match = delimiters.firstMatch(inputNumbers);
    if (match != null) {
      allowedSeperators = RegExp.escape(match.group(1)!);
      numString = inputNumbers.substring(match.end);
    }

    // Spliting the input with the seperators regex
    final List<String> inputList = numString.split(RegExp(allowedSeperators));

    int sum = 0;
    List<int> negativeNumbers = [];

    // Parsing and adding
    for (String singleNum in inputList) {
      int parsedNum = parsedInt(singleNum);
      if (parsedNum < 0) {
        negativeNumbers.add(parsedNum);
      } else {
        sum += parsedNum;
      }
    }
    if (negativeNumbers.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumbers.join(',')}',
      );
    }
    return sum;
  }

  static int parsedInt(String number) {
    try {
      return int.parse(number);
    } catch (e) {
      throw Exception("Given $number input it not a valid number");
    }
  }
}
