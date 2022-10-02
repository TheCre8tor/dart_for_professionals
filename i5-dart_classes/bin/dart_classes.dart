import 'package:dart_classes/dart_classes.dart';
import 'package:dart_classes/src/i1_classes/instance_methods.dart';

void main(List<String> args) {
  //! class optimization with const keyword
  var zero = const Methods.zero();
  var zero2 = const Methods.zero();

  var fromJson = Methods.fromJson({"x": 1, "y": 8});
  // var method = Methods(2, 2, 4, a: 9, b: 3, c: 4, d: 5, e: 6);

  // print("method --> $method");
  print("zero -> $zero");
  print("fromJson -> $fromJson");

  print(identical(zero, zero2));
}
