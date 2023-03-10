// Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

Map<String, int> numberOfOccurrences(List<String> list) {
  int count = 1;
  final map = <String, int>{};
  for (var element in list) {
    if (map.containsKey(element)) {
      int? a = map[element];
      map[element] = (a! + 1);
    } else {
      map[element] = count;
    }
  }
  for (var item in map.entries) {
    print("${item.key} - ${item.value}");
  }
  return map;
}

void main() {
  numberOfOccurrences(['1', '2', '3', '1', '2', '3', '3', 'dog']);
}
