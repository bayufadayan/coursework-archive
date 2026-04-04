package main

import (
	"fmt"
	"strings"
)

func main() {
	// Cara klasik
	var nama string = "Bayu"
	var umur int = 23

	fmt.Println("Nama : ", nama)
	fmt.Println("Umur : ", umur)

	// Automatic data type
	city := "Bogor"
	year := 2026

	fmt.Println("City : ", city)
	fmt.Println("Year : ", year)

	// Const
	const pi = 3.14

	fmt.Println("Pi : ", pi)

	// Number data type
	var i8 int8 = 127
	var i16 int16 = 32767
	var i32 int32 = 2147483647
	var i64 int64 = 9223372036854775807
	var i int = -100 // Ukuran tergantung arsitektur (32-bit atau 64-bi

	// Unsigned integers
	var u8 uint8 = 255
	var u16 uint16 = 65535
	var u32 uint32 = 4294967295
	var u64 uint64 = 18446744073709551615
	var u uint = 100 // Ukuran tergantung arsitektur

	// Menampilkan nilai
	fmt.Println("Signed Integers: ")
	fmt.Printf("int8: %v\n", i8)
	fmt.Printf("int16 : %v\n", i16)
	fmt.Printf("int32 : %v\n", i32)
	fmt.Printf("int64 : %v\n", i64)
	fmt.Printf("int : %v\n", i)

	fmt.Println("Unsigned Integers: ")
	fmt.Printf("uint8: %v\n", u8)
	fmt.Printf("uint16 : %v\n", u16)
	fmt.Printf("uint32 : %v\n", u32)
	fmt.Printf("uint64 : %v\n", u64)
	fmt.Printf("uint : %v\n", u)

	// Deklarasi variabel float32 dan float64
	var f32 float32 = 33.14159265354
	var f64 float64 = 3.14159265358979323846

	// Tampilkan nilai dengan presisi tinggi
	fmt.Println("Nilai float32:", f32)
	fmt.Println("Nilai float64:", f64)

	// Deklarasi variabel boolean
	var isRaining bool = true
	var isSunny bool = false
	isLoggedIn := true
	hasPermission := false

	// Menampilkan nilai boolean
	fmt.Println("Apakah hujan?", isRaining)
	fmt.Println("Apakah cerah?", isSunny)
	fmt.Println("Apakah login?", isLoggedIn)
	fmt.Println("Apakah punya akses?", hasPermission)

	// Deklarasi string dengan kutip ganda
	nama2 := "Triady"
	pesan := "Selamat datang di aplikasi kami!"

	// Deklarasi string dengan backtick (raw string)
	paragraf := `Halo, ini adalah contoh 
	multi-line string di Go.`

	// Menampilkan nilai string
	fmt.Println("Nama:", nama2)
	fmt.Println("Pesan:", pesan)
	fmt.Println("Paragraf:\n", paragraf)

	// Operasi String
	text := "Halo Dunia"

	// Mengubah huruf menjadi kecil
	fmt.Println("Lowercase:", strings.ToLower(text))

	// Mengubah huruf menjadi besar
	fmt.Println("Uppercase:", strings.ToUpper(text))

	// Mengecek string di mulai dengan kata 'halo'
	fmt.Println("Start with Halo? :", strings.HasPrefix(text, "Halo"))

	// Mengecek string di mengandung kata 'dunia'
	fmt.Println("Contains Dunia? :", strings.Contains(text, "Dunia"))

	// Memisahkan string berdasarkan delimiter
	parts := strings.Split("apel,banana,cherry", ",")
	fmt.Println("Splits : ", parts)

	// Mengganti bagian string
	newText := strings.ReplaceAll(text, "Dunia", "Golang")
	fmt.Println("Replace: ", newText)
}
