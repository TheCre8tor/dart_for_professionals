library constant_constructor;

class Point {
  const Point({required this.y, required this.x});

  final int y;
  final int x;

  //! This is a static variable ->
  static const Point origin = Point(y: 0, x: 0);

  @override
  String toString() => "Point(x: $x, y: $y)";
}
