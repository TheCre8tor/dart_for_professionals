/* NOTE:
   Only "part of" directory are allowed inside
   "extension" files from inside a library 
   */

part of 'first_library.dart';

void anotherFunction() {
  var actual = A();
  actual._privateField;
  actual._privateMethod();
}
