/*Polymorphism & Abstraction
• Create an abstract class Animal in Dart with a method
makeSound() that is declared as abstract
• Define two subclasses, Dog and Cat, that inherit from Animal
and override the makeSound() method to print "Woof!" and
"Meow!", respectively.*/

abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  var dog = Dog();
  var cat = Cat();

  dog.makeSound();
  cat.makeSound();
}
