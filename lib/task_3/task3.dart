// Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

List<num> numbersInString(String text) {
  List<String> list = text.split(" ");
  List<int> num = [];
  for (var element in list) {
    if (int.tryParse(element) is int) {
      int? number = int.tryParse(element);
      num.add(number!);
    }
  }
  return num;
}

void main() {
  print(numbersInString("вернуть 1 2 коллекцию num 5 этих чисел"));
  print(numbersInString("вернуть коллекцию num этих чисел"));
}
