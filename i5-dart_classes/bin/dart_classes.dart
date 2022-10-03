import 'package:dart_classes/dart_classes.dart';

void main(List<String> args) {
  {
    // var zero = Methods.zero();
    // var fromJson = Methods.fromJson({"x": 1, "y": 8});
    // var zeroY = Methods.zeroY(x: 80);
    // var zeroX = Methods.zeroX(y: 50);
    // var redirectJson = Methods.redirectJson(left: 56, right: 90);
    // // var method = Methods(2, 2, 4, a: 9, b: 3, c: 4, d: 5, e: 6);

    // // print("method --> $method");
    // print("zero -> $zero");
    // print("fromJson -> $fromJson");
    // print("Zero Y: $zeroY");
    // print("Zero X $zeroX");
    // print("Redirect Json: $redirectJson");

    // //! Constant Constructor ->
    // var point1 = const Point(y: 10, x: 15);
    // const point2 = Point(y: 10, x: 15);
    // var origin = Point.origin;

    // print(identical(point1, point2));
    // print(origin.x);

    // //! Factory Constructors ->
    // var randomPoint = RandomPoint.random(isPositive: false);
    // print(randomPoint);

    // var singleton = Singleton();
    // var singleton2 = Singleton();
    // print("${singleton}, $singleton2");
  }

  {
    var bird = Bird.defaults("Goat");
    var duck = Duck("Duck");
    bird.whatAmI();
    duck.whatAmI();

    var mouse = Mouse();
    var cat = Cat();
    cat.chase(mouse);
  }

  {}
}
