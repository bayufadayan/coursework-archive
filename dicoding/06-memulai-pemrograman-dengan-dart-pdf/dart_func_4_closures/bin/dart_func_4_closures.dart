//Closure dalam pemrograman adalah sebuah fungsi yang mengakses variabel di luar dirinya, 
//meskipun fungsi tersebut dipanggil di luar konteks tempat variabel tersebut didefinisikan.
Function callCounter() {
  var count = 0;
  return () {
    count++;
    print("Fungsi dipanggil $count kali.");
  };
}

void main() {
  var counter = callCounter();  // Membuat closure
  counter();  // Output: Fungsi dipanggil 1 kali.
  counter();  // Output: Fungsi dipanggil 2 kali.
  counter();  // Output: Fungsi dipanggil 3 kali.
}
