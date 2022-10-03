library generic_programming;

void main(List<String> arguments) {
  Turple turple = Turple<int>.fromList([1, 2, 3]);
  Turple<num> turple2 = Turple(2, 4, 6);
  print(turple + turple2);

  var list = [2, 50, 3, 89, 70];
  var item = Utils.getItem(list, 3);
  print("Extracted Item: $item");
}

//! Generic Type naming convesion ->
abstract class Vector<E> {} //? <E> -> Element

abstract class Mapx<K, V> {} //? <K, V> -> Key & Value

Vector<R> cast<R>() => [] as Vector<R>; //? <R> -> Return

List<T> castFrom<S, T>(List<S> sourcde) => []; //? <S, T> -> Source & Type

abstract class Bloc<Event, State> {} //? You can also use any name.
//! -->

// Restricted the generic type ton num only ->
class Turple<E extends num> {
  final E? _a;
  final E? _b;
  final E? _c;

  const Turple(this._a, this._b, this._c);

  Turple.fromList(List<E> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  E? get first => _a;
  E? get second => _b;
  E? get third => _c;

  Turple<num> operator +(Turple<num> t) {
    if (this is Turple<num>) {
      var thisAsTurpleNum = this as Turple<num>;

      return Turple(
        thisAsTurpleNum._a! + t._a!,
        thisAsTurpleNum._b! + t._b!,
        thisAsTurpleNum._c! + t._c!,
      );
    }

    return const Turple(0, 0, 0);
  }

  Turple<num> operator -(Turple<num> t) {
    if (this is Turple<num>) {
      var thisAsTurpleNum = this as Turple<num>;

      return Turple(
        thisAsTurpleNum._a! - t._a!,
        thisAsTurpleNum._b! - t._b!,
        thisAsTurpleNum._c! - t._c!,
      );
    }

    return const Turple(0, 0, 0);
  }

  @override
  String toString() => "Turple(first: $first, second: $second, third: $third)";
}

class Utils {
  static T? getItem<T>(List<T> list, int index) {
    return list.asMap().containsKey(index) ? list[index] : null;
  }
}
