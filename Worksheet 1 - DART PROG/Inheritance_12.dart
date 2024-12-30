class Animal {
  void makeSound() {
    print("Animal makes a sound.");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

void main() {
  var animal = Animal();
  animal.makeSound();
  var dog = Dog();
  dog.makeSound();
}
