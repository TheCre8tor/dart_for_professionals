/* Extension is a way to add an extra feature to an existen class */

extension IntegerExtension on int {
  int increaseByTen() {
    if (this == 5) {
      return this + 10;
    }

    return this;
  }
}
