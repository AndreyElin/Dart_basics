// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another), который возвращает
// расстояние от данной точки до точки в параметре. По желанию можете реализовать метод,
// принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника,
// который образуют данные точки. Реализуйте factory-конструкторы для данного класса,
// возвращающие начало координат, и ещё несколько на своё усмотрение (например,
// конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).

import 'dart:math';

class Point {
  double x = 0;
  double y = 0;
  double z = 0;

  Point(this.x, this.y, this.z);

  double distanceTo(Point another) {
    var dx = x - another.x;
    var dy = y - another.y;
    var dz = z - another.z;
    return (sqrt(dx * dx + dy * dy + dz * dz)).abs();
  }
}

void main() {
  print(Point(0, 0, 5).distanceTo(Point(4, 5, 1)));
}