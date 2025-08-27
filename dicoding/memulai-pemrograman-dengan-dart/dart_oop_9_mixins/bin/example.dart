// Definisikan mixin untuk berbagai kemampuan
mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}

// Kelas Animal sebagai kelas dasar
class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating');
  }
}

// Kelas Mammal sebagai turunan dari Animal (misalnya untuk mamalia)
class Mammal extends Animal {
  Mammal(String name) : super(name);
}

// Kelas Bird sebagai turunan dari Animal (misalnya untuk burung)
class Bird extends Animal {
  Bird(String name) : super(name);
}

// Kelas Cat yang hanya bisa berjalan
class Cat extends Mammal with Walkable {
  Cat(String name) : super(name);

  void meow() {
    print('$name says Meow');
  }
}

// Kelas Duck yang bisa berjalan, terbang, dan berenang
class Duck extends Bird with Walkable, Flyable, Swimmable {
  Duck(String name) : super(name);

  void quack() {
    print('$name says Quack');
  }
}

void main() {
  // Membuat objek Cat dan Duck
  var garfield = Cat('Garfield');
  var donald = Duck('Donald');

  // Memanggil metode dari Cat (mampu berjalan)
  print('${garfield.name}:');
  garfield.walk();
  garfield.meow();

  // Memanggil metode dari Duck (mampu berjalan, terbang, dan berenang)
  print('${donald.name}:');
  donald.walk();
  donald.fly();
  donald.swim();
  donald.quack();
}
