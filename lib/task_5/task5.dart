// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в
// данной строке. Однако цифры встречаются в виде английских слов от zero до nine.
// Например, в результате строки ‘one, two, zero, zero’ мы получим следующий
// результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами
// от 0 до 9, пропускайте их.

Set<int?> numbersWithoutRepetitions(List<String> wordsCollection) {
  Map<String, int> mapNumber = {
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9,
  };

  Set<int?> numbersCollection = {};
  for (var word in wordsCollection) {
    if (mapNumber.containsKey(word)) {
      numbersCollection.add(mapNumber[word]);
    }
  }
  return numbersCollection;
}

void main() {
  print(numbersWithoutRepetitions(['one', 'two', 'three', 'cat', 'dog']));
}
