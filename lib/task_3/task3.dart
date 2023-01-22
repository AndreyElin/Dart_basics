// Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

List<num> numbersInString(String text) {
  List<String> list = text.split(" ");
  List<num> num1 = [];
  for (var element in list) {
    num? number = num.tryParse(element);
    if (number == null) {
      continue;
    }
    num1.add(number);
  }
  return num1;
}

void main() {
  print(numbersInString("вернуть 1 2 коллекцию num 5.0 этих чисел"));
  print(numbersInString("вернуть коллекцию num этих чисел"));
}
