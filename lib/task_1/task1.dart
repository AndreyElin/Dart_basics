// Реализуйте методы вычисления НОД и НОК целых чисел.
// Реализуйте метод, который разбивает число на простые множители и возвращает их.

class DelimitersCalculator {
  static int greatestCommonDivisor(int a, int b) {
    if (a > b) {
      return b != 0 ? greatestCommonDivisor(b, a % b) : a;
    } else {
      return a != 0 ? greatestCommonDivisor(a, b % a) : b;
    }
  }

  static double leastCommonMultiple(int a, int b) {
    if (greatestCommonDivisor(a, b) != 0) {
      return a / greatestCommonDivisor(a, b) * b;
    } else {
      return 0;
    }
  }

  static List<int> splitsNumberIntoPrimeFactors(int n) {
    List<int> list = [];
    return list;
  }
}

void main() {
  print(DelimitersCalculator.greatestCommonDivisor(30, 7)); // 1
  print(DelimitersCalculator.greatestCommonDivisor(0, 0)); // 0
  print(DelimitersCalculator.greatestCommonDivisor(10, 0)); // 10
  print(DelimitersCalculator.greatestCommonDivisor(18, 24)); // 6
  print(DelimitersCalculator.leastCommonMultiple(24, 18)); // 72
  print(DelimitersCalculator.splitsNumberIntoPrimeFactors(64)); // 72
}
