// Abstract class Animal
abstract class Animal {
  // Properti umum yang dimiliki oleh semua hewan
  String name;
  int age;

  // Konstruktor untuk menginisialisasi name dan age
  Animal(this.name, this.age);

  // Metode abstract yang harus diimplementasikan oleh subclass
  void sound();
}
