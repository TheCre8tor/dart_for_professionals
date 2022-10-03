library first_library;

part 'first_library_extension_1.dart';
part 'first_library_extension_2.dart';

//! In Dart 1 feature should be placed in a seperate library,
//! that's the reason why we linked two libraries together.

class A {
  final int _privateField = 5;
  void _privateMethod() {}

  final int publicField = 8;
  void publicMethod() {}
}

void randomFunction() {
  var a = A();

  /* NOTE:
     ! The reason why we were able to access private fields in the same
     ! library is because Dart does not support Class Base private fields,
     ! it only support Library base private fields.
      */
  a._privateField;
  a._privateMethod();
}
