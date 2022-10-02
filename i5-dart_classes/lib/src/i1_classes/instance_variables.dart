/* NOTE: In order for a class to be instantiated
   every class need a constructor, dart implicitly
   create a constructor for you when you do not 
   create it yourself. */

class A {
  //! Ways of declaring and instantiating
  //! dart variables or fields
  int? _private;

  int? a;
  int b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int f = 5;

  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;

  static const int K = 10;
}
