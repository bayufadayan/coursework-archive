// cek versi golang `go version` di CMD
/* command pallete > Go: install/Update Tools > check all > OK
build jadi exutable files go build main.go
akses exutable file nya ./main
run biasa: go run main.go ==> buat di development biasanya biar lebih cepet */
package main

// akronim dari formal I/O
import "fmt"

// bisa di luar fungsi
var x int = 1

// tidak bisa di luar fungsi
// y := 2

func main() {
	// titik koma makruh, dipake bisa, lebih baik ngga di pakai
	// biasanya titik koma dipakai ketika 2 statements dalam satu baris
	fmt.Println("Hello, world!")

	// macam macam print
	var firstName1, lastName1 string = "Bayu", "Fadayan"
	fmt.Print(firstName1, "\n")
	fmt.Print(firstName1, " ", lastName1, "\n")
	fmt.Println(lastName1)

	// printf = buat cetak dengan format tertentu
	// %v = value default
	// %#v = value format go syntax
	// %T = cetak tipe data
	// %% = cetak %
	fmt.Printf("Values bay adalah : %v dan tipe data adlah: %T\n", firstName1, firstName1)
	fmt.Printf("Values bay adalah : %#v dan tipe data adlah: %%\n", firstName1)
	fmt.Println("===========")

	// variable (camelCase)
	var myName string = "Muhamad Bayu Fadayan"
	var nickname = "Bay"
	myAge := 21
	var a1 = 1
	var b1, c1, d1, e1 = 2, 3, 4, 5

	// Multiple variables
	var (
		firstName string = "Bayu"
		lastName  string = "Fadayan"
		height    int    = 160
	)

	fmt.Println(myName)
	fmt.Println(nickname)
	fmt.Println(myAge)

	fmt.Println(a1)
	fmt.Println(b1)
	fmt.Println(c1)
	fmt.Println(d1)
	fmt.Println(e1)

	fmt.Println(firstName)
	fmt.Println(lastName)
	fmt.Println(height)

	// Konstanta
	const TINGGI int = 160
	const BERAT = 60
	const (
		X int = 10
		Y     = 3.15
		Z     = "Hellow World"
	)

	fmt.Println(TINGGI)
	fmt.Println(BERAT)
	fmt.Printf("X: %d, Y: %.2f, Z: %s\n", X, Y, Z)

	// Tipe Data
	fmt.Println("======[TIPE DATA]=====")
	var herName string = "Magitas"
	var herAge int = 22
	var herHeight float32 = 156.34
	var isLovedMe bool = true
	var howBigIsIt uint = 999

	// ada perbedaa format saat hanya menggunakan println untuk yang float nya
	// println(herName, "\n", herAge, "\n", herHeight, "\n", isLovedMe)

	fmt.Println(herName, "\n", herAge, "\n", herHeight, "\n", isLovedMe, "\n", howBigIsIt)

	// Operator aritmatika
	fmt.Println("======[OPERATOR ARITMATIKA]=====")
	fmt.Println(10 + 4)
	fmt.Println(10 - 4)
	fmt.Println(10 * 4)
	fmt.Println(10 / 2)
	fmt.Println(10 % 3)

	var a, b, c = 10, 4, 2
	fmt.Println(a + b)
	fmt.Println(a - b)
	fmt.Println(a * b)
	fmt.Println(a / c)
	fmt.Println(a % b)

	var d = a + b + c
	fmt.Println(d)

	i := 5
	i++ // i = i + 1

	j := 5
	j-- // j = j - 1

	fmt.Println(i)
	fmt.Println(j)

	fmt.Println("======[OPERATOR PENUGASAN]=====")
	var a2 uint8 = 3
	var b2, c2, d2, e2, f2 uint8 = 5, 10, 15, 20, 25

	b2 += 5 // b = b + 5
	c2 -= 5 // c = c - 5
	d2 *= 5 // d = d * 5
	e2 /= 5 // e = e / 5
	f2 %= 5 // f = f % 5

	fmt.Println("nilai a :", a2)
	fmt.Println("nilai b :", b2)
	fmt.Println("nilai c :", c2)
	fmt.Println("nilai c :", d2)
	fmt.Println("nilai e :", e2)
	fmt.Println("nilai f :", f2)

	fmt.Println("======[OPERATOR PEMBANDING]=====")
	var x uint8 = 10
	var y uint8 = 5

	var txt1 = "Hello"
	var txt2 = "Hello"

	fmt.Println(x == y)
	fmt.Println(x != y)
	fmt.Println(x > y)
	fmt.Println(x < y)
	fmt.Println(x >= y)
	fmt.Println(x <= y)

	var result bool = txt1 == txt2
	fmt.Println(result)

	fmt.Println("======[OPERATOR LOGIKA]=====")
	a = 15

	fmt.Println(a > 10 && a < 5)
	fmt.Println(a > 10 || a < 5)
	fmt.Println(!(a > 10 || a < 5))

	// var nilaiUjian = 85
	// var nilaiAbsen = 75

	// var lulusUjian = nilaiUjian > 80
	// var lulusAbsen = nilaiAbsen > 80
	// fmt.Println(lulusUjian)
	// fmt.Println(lulusAbsen)

	// var lulus = lulusUjian && lulusAbsen

	// fmt.Println(nilaiUjian > 80 && nilaiAbsen > 80)
	// fmt.Println(lulus)

	fmt.Println("======[ARRAY]=====")
	var myArr = [3]int{100, 200, 300}
	myArr2 := [4]int{400, 500, 600, 700}

	fmt.Println(myArr)
	fmt.Println(myArr2)

	var myArr3 = [...]int{10, 20, 30}
	myArr4 := [...]int{40, 50, 60, 70}

	fmt.Println(myArr3)
	fmt.Println(myArr4)

	var languages = [3]string{"Go", "Java", "C"}
	fmt.Println(languages)

	var prices = [3]int{1000, 2000, 3000}
	fmt.Println(prices[0])
	fmt.Println(prices[2])

	prices[2] = 9000
	fmt.Println(prices[2])

	myArr5 := [4]int{}
	myArr6 := [4]int{1, 2}
	myArr7 := [4]int{3, 4, 5, 6}
	fmt.Println(myArr5)
	fmt.Println(myArr6)
	fmt.Println(myArr7)

	fmt.Println(len(myArr2))
	fmt.Println(len(languages))

	fmt.Println("======[SLICE]=====")
	// ini sebuah tipe data mirip slice, dan lebih sering pake slice dari paada array
	var mySlice = []int{1, 2, 3, 4, 5}
	mySlice2 := []string{
		"senin",
		"selasa",
		"rabu",
		"kamis",
		"jumat",
		"sabtu",
		"minggu",
	}

	fmt.Println(mySlice)
	fmt.Println(mySlice2)

	// func len da cap di slice
	fmt.Println(len(mySlice))
	fmt.Println(cap(mySlice))

	fmt.Println(len(mySlice2))
	fmt.Println(cap(mySlice2))

	// membuat slice dari array
	// ini pass by refrence jadi ketika slice ini diubah maka array nya juga berubah
	thisIsArray := [8]int{12, 13, 14, 15, 16, 17, 18, 19}
	// thisIsSlice := thisIsArray[3:5]
	// thisIsSlice := thisIsArray[4:]
	// thisIsSlice := thisIsArray[:2]
	thisIsSlice := thisIsArray[:]

	fmt.Printf("ini Slice dari Array = %v\n", thisIsSlice)
	fmt.Printf("lenght = %d\n", len(thisIsSlice))
	fmt.Printf("capacity = %d\n", cap(thisIsSlice))

	// contoh pass by reference
	fmt.Println("BEFORE")
	fmt.Println(thisIsArray)
	fmt.Println(thisIsSlice)

	fmt.Println("AFTER")
	thisIsSlice[0] = 1000
	fmt.Println(thisIsArray)
	fmt.Println(thisIsSlice)

	// Slice dengan fungsi MAKE
	thisIsSlice2 := make([]int, 5, 10)
	thisIsSlice2[0] = 10
	thisIsSlice2[1] = 11
	fmt.Printf("Ini slide pake make: %v\n", thisIsSlice2)
	fmt.Printf("Length: %d\n", len(thisIsSlice2))
	fmt.Printf("Caps: %d\n", cap(thisIsSlice2))

	fmt.Println("======[OPERASI PADA SLICE]=====")
	number := []int{1, 2, 3}

	fmt.Println(number[0])
	fmt.Println(number[1])

	// update slide
	number2 := []int{4, 5, 6}
	number2[2] = 7

	fmt.Println(number2)

	// nambah slice
	number3 := []int{10, 20, 30, 40, 50}
	fmt.Printf("Ini slice Awal : %v\n", number3)
	fmt.Printf("Length : %d\n", len(number3))
	fmt.Printf("Cap : %d\n", cap(number3))

	number3 = append(number3, 60, 70)
	fmt.Printf("Ini slice Awal : %v\n", number3)
	fmt.Printf("Length : %d\n", len(number3))
	fmt.Printf("Cap : %d\n", cap(number3))

	// mengubah panjang slice
	thisIsArrayAgain := [6]int{9, 10, 11, 12, 13, 14}
	thisIsSliceArray := thisIsArrayAgain[1:5]

	fmt.Printf("Ini slice Array : %v\n", thisIsSliceArray)
	fmt.Printf("Length : %d\n", len(thisIsSliceArray))
	fmt.Printf("Cap : %d\n", cap(thisIsSliceArray))

	// copy slice
	angka := []int{1, 2, 3, 4, 5}
	fmt.Printf("Ini slice asli : %v\n", angka)
	fmt.Printf("Length : %d\n", len(angka))
	fmt.Printf("Cap : %d\n", cap(angka))

	copyAngka := make([]int, len(angka), cap(angka))
	copy(copyAngka, angka)
	fmt.Printf("Ini slice kopiannya : %v\n", copyAngka)
	fmt.Printf("Length : %d\n", len(copyAngka))
	fmt.Printf("Cap : %d\n", cap(copyAngka))

	// MAP => mirip array assoiative di php, map di dart, dict di python
	fmt.Println("======[MAP]=====")
	var person = map[string]string{
		"name": "muhamad bayu fadayan",
		"job":  "programmer",
	}

	stock := map[string]int{
		"book":      10,
		"handphone": 5,
	}

	fmt.Println(person)
	fmt.Println(person["name"])
	fmt.Println(stock)
	fmt.Println(stock["book"])

	// membuat map dengan func make
	var laptop = make(map[string]string)
	laptop["merk"] = "Apple"
	laptop["model"] = "MacBook Pro"

	fmt.Println(laptop)

	// membuat map kosong
	var emptyMap = make(map[string]string)

	fmt.Println(emptyMap == nil)

	fmt.Println("======[PERKONDISIAL IF ELSE]=====")
	numbers := 10

	if numbers == 10 {
		fmt.Println("Number adalah 10")
	}

	// If else statement
	angka2 := 5

	if angka2%2 == 0 {
		fmt.Println("Genap")
	} else {
		fmt.Println("Ganjil")
	}

	// Else if statement
	nilai := 85
	absen := 90

	if nilai > 90 && absen > 95 {
		fmt.Println("Sangat Baik")
	} else if nilai > 80 && absen > 85 {
		fmt.Println("Baik")
	} else if nilai > 60 && absen > 70 {
		fmt.Println("Cukup")
	} else {
		fmt.Println("Buruk")
	}

	// Nested if
	num := 100

	if num >= 80 {
		fmt.Println("Num lebih dari 80")
		if num > 90 {
			fmt.Println("Num juga lebih dari 90")
		}
	} else {
		fmt.Println("Num kurang dari 80")
	}

	fmt.Println("======[SWITCH CASE]=====")
	warnaFavorit := "ungu"

	switch warnaFavorit {
	case "biru":
		fmt.Println("Warna favorit kamu adalah biru")
	case "merah":
		fmt.Println("Warna favorit kamu adalah merah")
	case "hijau":
		fmt.Println("Warna favorit kamu adalah hijau")
	default:
		fmt.Println("Warna favorit kamu bukan biru, merah atau hijau")
	}

	// Multi case switch statement
	hari := "januari"

	switch hari {
	case "senin", "selasa", "rabu", "kamis", "jumat":
		fmt.Println("Weekday")
	case "sabtu", "minggu":
		fmt.Println("Weekend")
	default:
		fmt.Println("Hari tidak valid")
	}

	fmt.Println("======[LOOPING]=====")
	// For loop
	for i := 1; i <= 10; i++ {
		fmt.Println(i)
	}

	// Nested loop
	as := [2]string{"buah", "jus"}
	bs := [3]string{"jambu", "mangga", "alpukat"}
	for i := 0; i < len(as); i++ {
		for j := 0; j < len(bs); j++ {
			fmt.Println(as[i], bs[j])
		}
	}

	// For range array
	cars := [3]string{"Toyota", "Honda", "Nissan"}
	for _, car := range cars {
		fmt.Println(car)
	}

	// For range map
	var persons = map[string]string{
		"name": "Ahmad Muhbit",
		"job":  "Programmer",
	}
	for key, value := range persons {
		fmt.Println(key, value)
	}

	// BREAK AND CONTINUE
	// Break statement
	for i := 0; i < 10; i++ {
		if i == 5 {
			break
		}
		fmt.Println(i)
	}
	fmt.Println("Selesai")

	// Continue statement
	for j := 0; j < 10; j++ {
		if j%2 == 0 {
			continue
		}
		fmt.Println(j)
	}
	fmt.Println("Selesai")
}
