void main() {
  greet('Dicoding', 2015);

  var firstNumber = 7;
  var secondNumber = 10;
  print(
      'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');

  greetNewUser1('Widy', 20, true);
  greetNewUser1('Widy', 20);
  greetNewUser1('Widy');
  greetNewUser1();

  print('---');

  // Menggunakan named optional parameters tanpa required
  greetNewUser2(name: 'Widy', age: 20, isVerified: true);
  greetNewUser2(name: 'Widy', age: 20);
  greetNewUser2(age: 20);
  greetNewUser2(isVerified: true);

  print('---');

  // Menggunakan named optional parameters dengan required
  greetNewUser3(name: 'Widy', age: 20, isVerified: true);
  greetNewUser3(name: 'Widy', age: 20);
}

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

void greeting() => print('Hello');

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

double average2(num num1, num num2) => (num1 + num2) / 2;

// Fungsi greetNewUser dengan positional optional parameters
void greetNewUser1(
    [String name = "dico", int age = 10, bool isVerified = true]) {
  print("Hello $name, age: $age, verified: $isVerified");
}

// Fungsi greetNewUser dengan named optional parameters tanpa required
void greetNewUser2({String? name, int? age, bool? isVerified}) {
  print(
      "Hello ${name ?? 'Guest'}, age: ${age ?? 'Unknown'}, verified: ${isVerified ?? false}");
}

// Fungsi greetNewUser dengan named optional parameters dan required
void greetNewUser3(
    {required String name, required int age, bool isVerified = false}) {
  print("Hello $name, age: $age, verified: $isVerified");
}
