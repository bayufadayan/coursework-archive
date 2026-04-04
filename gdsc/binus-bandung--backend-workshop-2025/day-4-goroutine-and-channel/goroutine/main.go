package main

import "fmt"

func print(till int, message string) {
	for i := 0; i < till; i++ {
		fmt.Println((i + 1), message)
	}
}

func main()  {
	go print(5, "halo")
	go print(5, "hai")

	var input string
	fmt.Scanln(&input)
}