package main

import "fmt"

func main() {
	m := map[string]int{
		"apel":   10,
		"pisang": 20,
	}

	fmt.Println(m)
	
	// Membuat dengan Make
	m2 := make(map[string]int)
	m2["apple"] = 10
	m2["banana"] = 10
	fmt.Println(m2)

	fmt.Println("Jumlah Pisang", m["pisang"])
	fmt.Println("Jumlah Banana", m2["banana"])
	
	// Tambah nilai
	m["naga"] = 100
	m2["dragon"] = 999
	fmt.Println("Jumlah Naga", m["naga"])
	fmt.Println("Jumlah Dragon", m2["dragon"])


	// Fungsi pada Map
	// Make = membuat map kosong
	nilai_uts := make(map[string]int)	
	fmt.Println("Membuat map kosong")
	fmt.Println(nilai_uts)

	// Langsung dengan data
	nilai_uas := map[string]int {
		"Bayu": 100,
		"Fadayan": 60,
	}
	fmt.Println("Membuat map langsung dengan nilai")
	fmt.Println(nilai_uas)
	
	// Menambah / update data
	nilai_uas["Bayu"] = 90
	nilai_uas["Joy"] = 100
	fmt.Println("Update dan Menambah data")
	fmt.Println(nilai_uas)
	
	// Mengambl value
	nilai_bayu := nilai_uas["Bayu"]
	fmt.Println("Ambil value dan ditaro ke var lain")
	fmt.Println(nilai_bayu)
	
	// mengecek apakah ada key
	isThereUdin, okUdin := nilai_uas["Udin"]
	isThereBayu, okBayu := nilai_uas["Bayu"]
	fmt.Println("Apakah nilai \"Udin\" ada?")
	fmt.Println(okUdin, "Nilainya adalah", isThereUdin)
	fmt.Println("Apakah nilai \"Bayu\" ada?")
	fmt.Println(okBayu, "Nilainya adalah", isThereBayu)


	// Hapus Key
	delete(nilai_uas, "Bayu")
	fmt.Println(nilai_uas)
	
	// Panjang map
	fmt.Println(len(nilai_uas))
}