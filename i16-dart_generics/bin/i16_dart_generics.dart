library generic_programming;

void main(List<String> arguments) {
  Turple turple = Turple.fromList([3, 7, 10]);
  print(turple.third);
}

//! Generic Type naming convesion ->
abstract class Vector<E> {} //? <E> -> Element

abstract class Map<K, V> {} //? <K, V> -> Key & Value

Vector<R> cast<R>() => [] as Vector<R>; //? <R> -> Return

List<T> castFrom<S, T>(List<S> sourcde) => []; //? <S, T> -> Source & Type

abstract class Bloc<Event, State> {} //? You can also use any name.
//! -->

class Turple {
  final int? _a;
  final int? _b;
  final int? _c;

  const Turple(this._a, this._b, this._c);

  Turple.fromList(List<int> list)
      : _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  int? get first => _a;
  int? get second => _b;
  int? get third => _c;
}
