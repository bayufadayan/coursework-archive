import 'bird.dart';

void main() {
  // Membuat objek Bird, Sparrow, dan Eagle
  var bird = Bird('Generic Bird', 3);  // Ini tidak bisa langsung diinstansiasi karena Animal adalah abstract
  var sparrow = Sparrow('Jack', 2);
  var eagle = Eagle('King', 5);

  // Memanggil metode sound pada masing-masing objek
  sparrow.sound();  // Output: Jack the sparrow is singing softly.
  eagle.sound();    // Output: King the eagle is screeching.
  
  // Memanggil metode fly pada Sparrow dan Eagle
  sparrow.fly();    // Output: Jack is flying.
  eagle.fly();      // Output: King is flying.

  // Memanggil metode khusus pada Eagle
  eagle.soar();     // Output: King the eagle is soaring high.
}
