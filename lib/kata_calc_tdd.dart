class KataCalculator {
  static int add(String inputNumber) {
    // Returning 0 if the given input is Empty
    if (inputNumber.isEmpty) return 0;
    try {
      return int.parse(inputNumber);
    } catch (e) {
      throw Exception("Given $inputNumber input it not a valid number");
    }
  }
}
