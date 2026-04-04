import 'dart:io';

void main() {
  while (true) {
    print('Pilih skala suhu asal:');
    print('1. Celsius');
    print('2. Fahrenheit');
    print('3. Kelvin');
    print('4. Reamur');
    stdout.write('Masukkan pilihan Anda (1-4) atau "0" untuk keluar: ');
    var choice = int.tryParse(stdin.readLineSync()!) ?? -1;

    if (choice == 0) break;

    stdout.write('Masukkan nilai suhu: ');
    var suhu = num.parse(stdin.readLineSync()!);

    print('\nPilih skala suhu tujuan:');
    print('1. Celsius');
    print('2. Fahrenheit');
    print('3. Kelvin');
    print('4. Reamur');
    stdout.write('Masukkan pilihan Anda (1-4): ');
    var targetChoice = int.tryParse(stdin.readLineSync()!) ?? -1;

    var hasil = convertTemperature(suhu, choice, targetChoice);

    if (hasil != null) {
      print('\nHasil konversi: $hasil');
    } else {
      print('Pilihan tidak valid.');
    }
    print('');
  }
}

num? convertTemperature(num suhu, int from, int to) {
  if (from == to) return suhu;

  num celsius;
  switch (from) {
    case 1: // Celsius
      celsius = suhu;
      break;
    case 2: // Fahrenheit ke Celsius
      celsius = (suhu - 32) * 5 / 9;
      break;
    case 3: // Kelvin ke Celsius
      celsius = suhu - 273.15;
      break;
    case 4: // Reamur ke Celsius
      celsius = suhu * 5 / 4;
      break;
    default:
      return null;
  }

  switch (to) {
    case 1: // Celsius
      return celsius;
    case 2: // Celsius ke Fahrenheit
      return celsius * 9 / 5 + 32;
    case 3: // Celsius ke Kelvin
      return celsius + 273.15;
    case 4: // Celsius ke Reamur
      return celsius * 4 / 5;
    default:
      return null;
  }
}
