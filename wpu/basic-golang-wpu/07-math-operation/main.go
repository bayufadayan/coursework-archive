package main

import "fmt"

func main() {
	a := 10
	b := 40
	fmt.Println(a , "+", b, "=", a+b)
	fmt.Println(a , "-", b, "=", a-b)
	fmt.Println(a , "*", b, "=", a*b)
	fmt.Println(a , "/", b, "=", a/b)
	fmt.Println(a , "%", b, "=", a%b)
	a++
	fmt.Println("Nilai a setelah di increment", a)
	a--
	fmt.Println("Nilai a setelah di decrement", a)
	a += 10
	fmt.Println("Nilai a setelah ditambah 10", a)
}