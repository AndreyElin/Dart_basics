// Реализуйте методы для преобразования целых чисел
// из десятичной системы в двоичную и обратно.

import 'dart:math';

int convertBinaryToDecimal(String binaryNumber) {
  int decimalNumber = 0;
  int base = 0;

  for (int i = binaryNumber.length; i > 0; i--) {
    if ((binaryNumber[i - 1] == '1') || (binaryNumber[i - 1] == '0')) {
      decimalNumber += pow(2, base).toInt() * int.parse(binaryNumber[i - 1]);
      base++;
    }
  }
  return (binaryNumber[0] == '-') ? -decimalNumber : decimalNumber;
}

String convertDecimalToBinary(int decimalNumber) {
  int minusFlag = decimalNumber;
  if (decimalNumber == 0) {
    return '0';
  }

  String binaryNumber = '';

  while (decimalNumber != 0) {
    binaryNumber = '${(decimalNumber % 2)}$binaryNumber';
    decimalNumber ~/= 2;
  }

  return (minusFlag > 0) ? binaryNumber : '-$binaryNumber';
}

void main() {
  print(convertBinaryToDecimal('1001000'));
  print(convertBinaryToDecimal('-1001000'));
  print(convertDecimalToBinary(72));
  print(convertDecimalToBinary(-72));
}
