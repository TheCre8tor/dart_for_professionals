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

  //! a method without a function body is an
  //! abstract method.
  void create();
  List<int> read();
  void update();
  void delete();
}

class Route {
  /* external keyword denote that the implementation
     the route method will be implemented in another
     class, which works as an abstract class. */
  external route();

  void getLastRoute() {}
}

class UserRepository implements BaseUserRepository {
  UserRepository();

  @override
  List<int> userList = [];

  @override
  void create() {
    // TODO: implement create
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  List<int> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  void update() {
    // TODO: implement update
  }
}
