import 'animal.dart';

void main() {
  var dog = Animal('', 2, 4.2)
    ..name = 'Buddy'
    ..age = 3
    ..weight = 10.0;

  // Sekarang objek `dog` sudah diatur dengan nama, umur, dan beratnya
  print('Animal: ${dog.name}, Age: ${dog.age}, Weight: ${dog.weight}');

  // Memanggil metode
  dog.eat();
  dog.poop();
}