class KataCalculator {
  static int add(String inputNumber) {
    // Returning 0 if the given input is Empty
    if (inputNumber.isEmpty) return 0;

    final String allowedSeperators = ",|\n";
    final List<String> inputList = inputNumber.split(RegExp(allowedSeperators));
    int sum = 0;

    for (String singleNum in inputList) {
      int parsedNum = parsedInt(singleNum);
      sum += parsedNum;
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
