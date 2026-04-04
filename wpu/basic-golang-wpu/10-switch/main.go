package main

import "fmt"

func main() {

	// 1. SWITCH dengan number
	angka := 2
	switch angka {
	case 1:
		fmt.Println("Satu")
	case 2:
		fmt.Println("Dua")
	default:
		fmt.Println("Tidak diketahui")
	}

	// 2. SWITCH dengan string
	hari := "senin"
	switch hari {
	case "senin":
		fmt.Println("Hari kerja")
	case "minggu":
		fmt.Println("Hari libur")
	default:
		fmt.Println("Hari biasa")
	}

	// 3. SWITCH dengan fallthrough
	nilai := 80
	switch {
	case nilai >= 80:
		fmt.Println("Nilai bagus")
		fallthrough
	case nilai >= 70:
		fmt.Println("Lulus")
	default:
		fmt.Println("Tidak lulus")
	}

	// 4. SWITCH dengan short statement
	switch angka2 := 5; angka2 {
	case 1:
		fmt.Println("Satu")
	case 5:
		fmt.Println("Lima")
	default:
		fmt.Println("Lainnya")
	}

}