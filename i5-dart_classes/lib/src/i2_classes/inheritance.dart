/* Inheritance: 
   is the process of sharing of 
   behavior between 2 classes 
   */

/* Inheritance methods: extends, implements, with.
   ! extend -> can easily be interpreted as inherit.
   */

class Animal {
  final String name;

  Animal({required this.name});
  Animal.fromJson(Map<String, String> json) : name = json["name"]!;

  void whatAmI() => print("I'm an animal, a $name to be precised");
  void chase(Animal animal) {}
}

class Mouse extends Animal {
  Mouse() : super(name: "Jerry");
}

class Cat extends Animal {
  Cat() : super(name: "Tom");

  /* Without the covariant keyword there will be a 
     compile time error because not all animal are 
     mouse. 
     
     ! Whenever we want to tighting a Type from
     ! a super class to a subclass, we can use
     ! the covariant keyword to archieve it.

     ? By changing the chase parameter type from
     ? Animal to Mouse is achived through the concept
     ? of polymorphism.
     */
  @override
  void chase(covariant Mouse mouse) {
    print("${super.name} is chasing ${mouse.name}");
  }
}

class Elephant extends Animal {
  Elephant() : super(name: "Juna");
}

class Bird extends Animal {
  /* NOTE:
     ! as "this" is for the current class,
     ! "super" is for the class right above it in the inheritance tree */
  Bird(String name) : super.fromJson({"name": name});
  Bird.defaults(String name) : super(name: name);

  @override
  void whatAmI() {
    /* When the super class method is called
       in the override class, the behavior of
       the super class method will be executed. */

    super.whatAmI();
    print("A $name \n");
  }
}

class Duck extends Bird {
  Duck(String name) : super(name);

  /* This is the concept of polymorphism:
     ! When you take a method of the same name
     ! from the base class and override it to
     ! perform a specific behavior.
     */
  @override
  void whatAmI() {
    print("I'm a duck");
  }

  void swim() {
    print("I'm a duck and I can swim");
  }
}
