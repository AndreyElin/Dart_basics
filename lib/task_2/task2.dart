// Реализуйте методы для преобразования целых чисел
// из десятичной системы в двоичную и обратно.

int convertBinaryToDecimal(int binaryNumber) {
  int decimalNumber = 0;
  int base = 1;

  while (binaryNumber > 0) {
    int lastDigit = binaryNumber % 10;
    binaryNumber = binaryNumber ~/ 10;
    decimalNumber += lastDigit * base;
    base = base * 2;
  }
  return decimalNumber;
}

String? convertDecimalToBinary(int decimalNumber) {
  if (decimalNumber == 0) {
    return '0';
  }

  String binaryNumber = '';

  while (decimalNumber != 0) {
    binaryNumber = '${(decimalNumber % 2)}$binaryNumber';
    decimalNumber ~/= 2;
  }

  return binaryNumber;
}

void main() {
  print(convertBinaryToDecimal(1001000));
  print(convertDecimalToBinary(72));
}
