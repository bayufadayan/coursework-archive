package main

import "fmt"

func main() {

	// For klasik
	fmt.Println("For Klasik")
	for i := 1; i <= 5; i++ {
		fmt.Println("Iterasi ke-", i)
	}

	fmt.Println("======================")

	// For hanya kondisi (mirip while)
	fmt.Println("For Hanya Kondisi (Mirip While)")
	j := 1
	for j <= 5 {
		fmt.Println("Iterasi ke-", j)
		j++
	}

	fmt.Println("======================")

	// For dengan range (iterasi array/slice)
	fmt.Println("For dengan Range (Iterasi Array/Slice)")
	nilai := []int{80, 90, 75, 85}
	for index, value := range nilai {
		fmt.Printf("Index: %d, Nilai: %d\n", index, value)
	}

	fmt.Println("======================")

	// For dengan break dan continue
	fmt.Println("For dengan Break dan Continue")
	for k := 1; k <= 10; k++ {
		if k%2 == 0 {
			continue
		}
		if k > 7 {
			break
		}
		fmt.Println("Iterasi ke-", k)
	}

	fmt.Println("======================")

	// For tanpa kondisi
	fmt.Println("Infinity Loop")
	for {
		fmt.Println("In to Infinity Loop")
		break
	}

}
