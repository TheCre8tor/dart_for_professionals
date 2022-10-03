/* Abstraction can be achieved with:
   ! Abstract Classes
   ! Abstract Methods
   ! Interfaces 
  */

//! Interface ->
/* An interface is a contract you promised to 
   implement within another class */
abstract class BaseUserRepository {
  late final List<int> userList;

  //! These methods are automatically
  //! an abstract methods, because its
  //! class is marked as an abstract
  //! class.
  void create();
  List<int> read();
  void update();
  void delete();
}
