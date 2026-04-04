package main

import (
	"fmt"
	"strconv"
)

func main() {

	// Number to number conversion
	var a int = 10
	var b float64 = float64(a)

	fmt.Println("Nilai a (int) : ", a)
	fmt.Println("Nilai b (float64) : ", b)

	// Number to string conversion
	var score int = 95
	var text string = strconv.Itoa(score)
	// Itoa = A to i = Integer to ASCII

	fmt.Println("Nilai Ujian : ", text)

	// String to number conversion
	var text2 string = "100"
	number, err := strconv.Atoi(text2)
	// Atoi = A to i = ASCII to Integer

	if err != nil {
		fmt.Println("Pesan Error: ", err.Error())
	} else {
		fmt.Println("Angka : ", number)
	}

	// Bool to string conversion
	truth := true
	str := strconv.FormatBool(truth)
	fmt.Println("Boolean ke string: ", str)

	// String to bool convertion
	val, _ := strconv.ParseBool("true")
	fmt.Println("String ke Boolean: ", val)
}