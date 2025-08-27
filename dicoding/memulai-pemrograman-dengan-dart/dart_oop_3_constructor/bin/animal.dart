class Animal {
  // kelas tanpa constructor
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }

  // Versi ringkas
  // Animal(this.name, this.age, this.weight);

  // named constructor
  Animal.name(this.name);
  Animal.age(this.age);
  Animal.weight(this.weight);

  // Initializer list
  Animal.cat(this.name, this.weight) : age = 2 {
    // write your code here.
    /// adalah tempat yang dapat Anda gunakan untuk menambahkan logika tambahan 
    /// atau kode yang akan dijalankan setelah initializer list 
    /// contoh:
    /// Animal.cat(this.name, this.weight) : age = 2 {
    ///     if (name.isEmpty) {
    ///       print('Warning: Name is empty!');
    ///     }
    ///     if (weight <= 0) {
    ///       print('Warning: Invalid weight!');
    ///     }
    ///  }
  }
}