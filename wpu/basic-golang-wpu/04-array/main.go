package main

import "fmt"

func main() {
	var angka [3]int = [3]int{10, 20, 30}
	fmt.Println(angka);
	fmt.Println(angka[1]);
	
	angka[1] =  80;
	fmt.Println("Ini adalah value index ke-1: ", angka[1]);

	// Fungsi pada Array
	number := [5]int{10, 20, 30, 40, 50};
	fmt.Println("Jumlah elemen: ", len(number));
	fmt.Println("Index ke 1: ", number[1]);
	number[1] = 100
	fmt.Println("(Update) Index ke 1: ", number[1]);

	// Perulangan array
	fmt.Println("Ini adalah perulangan:")
	for index, value := range number {
		fmt.Println("Isi dari index ke-", index, "adalah ", value)
	}

}