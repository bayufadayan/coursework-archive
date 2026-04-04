package main

import "fmt"

func main() {
	// Operator Perbandingan
	var angka1, angka2 int
	fmt.Println("Masukan angka pertama : ")
	fmt.Scanln(&angka1)
	fmt.Println("Masukan angka kedua : ")
	fmt.Scanln(&angka2)

	fmt.Printf("%d == %d : %t\n", angka1, angka2, angka1 == angka2)
	fmt.Printf("%d != %d : %t\n", angka1, angka2, angka1 != angka2)
	fmt.Printf("%d > %d : %t\n", angka1, angka2, angka1 > angka2)
	fmt.Printf("%d < %d : %t\n", angka1, angka2, angka1 < angka2)
	fmt.Printf("%d >= %d : %t\n", angka1, angka2, angka1 >= angka2)
	fmt.Printf("%d <= %d : %t\n", angka1, angka2, angka1 <= angka2)

	// Operator Logika
	fmt.Println("\n=== Studi Kasus: Seleksi Kandidat Program Magang ===")
	var nilaiTes, nilaiWawancara int
	var portofolio, sertifikasi, relokasi, blacklist, rekomendasi int

	fmt.Print("Nilai tes teknis (0-100): ")
	fmt.Scanln(&nilaiTes)
	fmt.Print("Nilai wawancara (0-100): ")
	fmt.Scanln(&nilaiWawancara)
	fmt.Print("Punya portofolio? (1=ya, 0=tidak): ")
	fmt.Scanln(&portofolio)
	fmt.Print("Punya sertifikasi? (1=ya, 0=tidak): ")
	fmt.Scanln(&sertifikasi)
	fmt.Print("Bersedia relokasi? (1=ya, 0=tidak): ")
	fmt.Scanln(&relokasi)
	fmt.Print("Masuk blacklist? (1=ya, 0=tidak): ")
	fmt.Scanln(&blacklist)
	fmt.Print("Punya rekomendasi kuat? (1=ya, 0=tidak): ")
	fmt.Scanln(&rekomendasi)

	isPortofolio := portofolio == 1
	isSertifikasi := sertifikasi == 1
	isRelokasi := relokasi == 1
	isBlacklist := blacklist == 1
	isRekomendasi := rekomendasi == 1

	lulusDasar := nilaiTes >= 75 && nilaiWawancara >= 70                        // AND
	jalurAlternatif := (nilaiTes >= 85 || isRekomendasi) && !isBlacklist        // OR + NOT
	butuhPembinaan := !(isPortofolio || isSertifikasi)                          // NOR
	prioritasKhusus := isPortofolio != isSertifikasi                            // XOR
	siapDitempatkan := isRelokasi && !isBlacklist                               // AND + NOT
	gagalMutlak := !(lulusDasar && siapDitempatkan)                             // NAND
	diterima := (lulusDasar || jalurAlternatif) && siapDitempatkan && !butuhPembinaan

	fmt.Println("\n--- Hasil Evaluasi Logika ---")
	fmt.Printf("Lulus dasar (AND): %t\n", lulusDasar)
	fmt.Printf("Jalur alternatif (OR + NOT): %t\n", jalurAlternatif)
	fmt.Printf("Butuh pembinaan (NOR): %t\n", butuhPembinaan)
	fmt.Printf("Prioritas khusus (XOR): %t\n", prioritasKhusus)
	fmt.Printf("Gagal mutlak (NAND): %t\n", gagalMutlak)
	fmt.Printf("Keputusan akhir diterima: %t\n", diterima)
}