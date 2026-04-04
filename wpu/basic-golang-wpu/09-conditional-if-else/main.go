package main

import "fmt"

func main() {

	// 1. IF
	umur := 18
	if umur >= 18 {
		fmt.Println("Sudah dewasa")
	}

	// 2. IF ELSE
	nilai := 70
	if nilai >= 75 {
		fmt.Println("Lulus")
	} else {
		fmt.Println("Tidak lulus")
	}

	// 3. IF ELSE IF
	skor := 85
	if skor >= 90 {
		fmt.Println("A")
	} else if skor >= 80 {
		fmt.Println("B")
	} else if skor >= 70 {
		fmt.Println("C")
	} else {
		fmt.Println("D")
	}

	// 4. SHORT STATEMENT
	if angka := 10; angka%2 == 0 {
		fmt.Println("Genap")
	} else {
		fmt.Println("Ganjil")
	}

	// CONTOH LAIN SHORT STATEMENT
	angka := 7.45
	if v := angka*2; v > 10 {
		fmt.Println("Hasil lebih dari 10:", v) 
	}

}