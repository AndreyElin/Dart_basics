// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на
// википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать
// методы math. В случае когда значение вернуть невозможно, необходимо бросать
// исключение с описанием ошибки.

double _mAbs(double x) {
  return (x < 0) ? -x : x;
}

extension on num {
  num rootOfNDegree(int rootDegree) {
    if (this < 0 && rootDegree % 2 == 0) {
      throw ArgumentError();
    }

    double eps = 0.00001; //допустимая погрешность
    double root = this / rootDegree; //начальное приближение корня
    num rn = this; //значение корня последовательным делением

    while (_mAbs(root - rn) >= eps) {
      rn = this;
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
    }

    return root;
  }
}

void main() {
  try {
    print(125.rootOfNDegree(3));
    print(8.rootOfNDegree(3));
    print(-16.rootOfNDegree(4));
  } on ArgumentError {
    print('Корень из отрицательного числа не существует');
  }
}
