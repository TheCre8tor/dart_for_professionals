library factory_constructor;

import 'dart:math';

class RandomPoint {
  const RandomPoint({required this.y, required this.x});

  factory RandomPoint.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 0;
    int maxPositiveValue = 99;

    int randomNegativeValue = minNegativeValue +
        Random().nextInt(maxNegativeValue - minNegativeValue);

    int randomPositiveValue = minPositiveValue +
        Random().nextInt(maxPositiveValue - minPositiveValue);

    return isPositive
        ? RandomPoint(y: randomPositiveValue, x: randomPositiveValue)
        : RandomPoint(y: randomNegativeValue, x: randomNegativeValue);
  }

  final int y;
  final int x;

  //! This is a static variable ->
  static const RandomPoint origin = RandomPoint(y: 0, x: 0);

  @override
  String toString() => "RandomPoint(x: $x, y: $y)";
}

class Singleton {
  Singleton._privateConstructor();
  static final _instane = Singleton._privateConstructor();

  factory Singleton() => _instane;
}
