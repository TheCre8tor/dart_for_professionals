library dart_methods;

class Methods {
  /* A constructor is a method that is called
     whenever a class is instantiated.
     
     ! Static variables cannot to be set from 
     ! the constructor of a class.

     ! final variables cant also be set from
     ! the constructor body
     */

  //! Default Constructor
  Methods({required this.x, required this.y});

  // Methods(
  //   int p,
  //   this.x,
  //   this.y, {
  //   int? a,
  //   required this.b,
  //   required int c,
  //   required this.d,
  //   required this.e,
  // }) : this.c2 = c {
  //   _private = p;
  //   this.a = a;
  // }

  //! Named Constructor
  Methods.zero()
      : x = 0,
        y = 0;

  Methods.fromJson(Map<String, int> json)
      : x = json["x"]!,
        y = json["y"]!;

  //! Redirecting to Default Constructors with initializer lits (:) ->
  Methods.zeroX({required int y}) : this(x: 0, y: y);
  Methods.zeroY({required int x}) : this(x: x, y: 0);

  //! Redirecting to Named Constructor ->
  Methods.redirectJson({required int left, required int right})
      : this.fromJson({"x": left, "y": right});

  //! Instance Variables
  final int x;
  final int y;

  // int? _private;

  // int? a;
  // int b = 1;

  // final int c = 2;
  // final int c2;

  // late int d;
  // late final int e;
  // late final int f = 5;

  // static int g = 6;
  // static late int h;
  // static late int i = 8;
  // static late final int j;

  // static const int K = 10;

  // @override
  // String toString() {
  //   return "A(_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f)";
  // }

  @override
  String toString() {
    return "A(Zero(x: $x, y: $y)";
  }
}
