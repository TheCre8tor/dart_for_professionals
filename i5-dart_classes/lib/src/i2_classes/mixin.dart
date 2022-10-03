/* Mixin: A mixin is a class without a constructor.
   A class of which behavior can be shared with other class.

   ! A mixin shouldn't be instantiated, it's an anti-pattern if it does. 
  */

//! Using an abstract class ->
abstract class Hack {
  void routes();

  int method({required int x, required int y}) {
    return x + y;
  }
}

//! Using the mixin keyword ->
mixin Hack3 {
  void routes();

  int method({required int x, required int y}) {
    return x + y;
  }
}
