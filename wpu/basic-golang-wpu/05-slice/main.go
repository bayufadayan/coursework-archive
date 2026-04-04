package main

import "fmt"
func main() {
	arr := [6]int{10, 20, 30, 40, 50, 60}
	fmt.Println("Asal Array: ", arr)

	slice_01 := arr[:] //untuk mengambil seluruh element
	fmt.Println("Ini slide ke-1: ", slice_01)
	
	slice_02 := arr[:2] //mulai dari awal sampai sebelum 2 = 0, 1
	fmt.Println("Ini slide ke-2: ", slice_02)
	
	slice_03 := arr[3:] // mengambil mulai dari 3 sampai akhir = 3, 4, 5, ...
	fmt.Println("Ini slide ke-3: ", slice_03)
	
	slice_04 := arr[1:4] //mengambil 1 sampai <4 = 1, 2, 3
	fmt.Println("Ini slide ke-4: ", slice_04)

	// Fungsi pada Slice
	fmt.Println("Panjang slice 4 :", len(slice_04))
	fmt.Println("Kapasitas slice 4:", cap(slice_04))
	
	fmt.Println("Hasil Penambahan pada slice:")
	slice_04 = append(slice_04, 2, 991)
	fmt.Println("Isi dari slice 4", slice_04)
	fmt.Println("Panjang slice 4 :", len(slice_04))
	fmt.Println("Kapasitas slice 4", cap(slice_04))

	slice_05 := make([]int, 3, 5)
	fmt.Println("Isi dari slice 5: ", slice_05)

	fmt.Println("==============")
	
	n := copy(slice_05, slice_04)
	fmt.Println("Isi dari slice 4: ", slice_04)
	fmt.Println("Isi dari slice 5: ", slice_05)
	fmt.Println("Isi dari slice 6: ", n)

}