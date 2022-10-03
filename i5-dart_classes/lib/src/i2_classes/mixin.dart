/* Mixin: A mixin is a class without a constructor.
   A class of which behavior can be shared with other class.

   ! A mixin shouldn't be instantiated, it's an anti-pattern if it does. 
  */

//! Using an abstract class ->
abstract class Performer {
  void perform() => print("Performs");
}

//! Using the mixin keyword ->
//? Guitarist must be mixed with a class that extends Performer class ->
mixin Guitarist on Performer {
  void playGuitar() => print("Playing guitar 🎸..");
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print("Playing drums 🥁...");
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer {
  // @override
  // void perform() {
  //   super.playDrums();
  //   super.playGuitar();
  // }
}
