void main() {
  // 1. Anonymous Function sebagai Callback dalam forEach
  var list = [1, 2, 3, 4, 5];
  
  // Mencetak setiap elemen dalam list
  print('Mencetak elemen dari list menggunakan anonymous function:');
  list.forEach((element) {
    print(element);  // Anonymous function digunakan sebagai callback
  });

  // 2. Anonymous Function sebagai Return Value (mengembalikan fungsi)
  Function multiplyBy(int factor) {
    return (int x) => x * factor;  // Mengembalikan anonymous function
  }

  var multiplyBy2 = multiplyBy(2);  // Mendapatkan fungsi untuk perkalian dengan 2
  print('\nHasil perkalian 5 dengan 2 menggunakan anonymous function:');
  print(multiplyBy2(5));  // Output: 10

  // 3. Anonymous Function dengan Ekspresi Tunggal
  var add = (int a, int b) => a + b;  // Anonymous function dengan ekspresi tunggal
  print('\nHasil penjumlahan 5 dan 3 menggunakan anonymous function:');
  print(add(5, 3));  // Output: 8
}
