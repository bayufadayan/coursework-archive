import 'animal.dart';

// Kelas Bird yang mewarisi dari Animal (abstract class)
class Bird extends Animal {
  // Konstruktor untuk Bird
  Bird(String name, int age) : super(name, age);

  // Implementasi metode sound untuk Bird
  @override
  void sound() {
    print('$name the bird is chirping.');
  }

  // Metode khusus untuk burung yang bisa terbang
  void fly() {
    print('$name is flying.');
  }
}

// Subclass Sparrow yang mewarisi dari Bird
class Sparrow extends Bird {
  // Konstruktor untuk Sparrow
  Sparrow(String name, int age) : super(name, age);

  // Implementasi metode sound untuk Sparrow
  @override
  void sound() {
    print('$name the sparrow is singing softly.');
  }
}

// Subclass Eagle yang mewarisi dari Bird
class Eagle extends Bird {
  // Konstruktor untuk Eagle
  Eagle(String name, int age) : super(name, age);

  // Implementasi metode sound untuk Eagle
  @override
  void sound() {
    print('$name the eagle is screeching.');
  }

  // Menambahkan metode spesifik untuk Eagle
  void soar() {
    print('$name the eagle is soaring high.');
  }
}
