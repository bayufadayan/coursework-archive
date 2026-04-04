package main

import "fmt"

func main()  {
	var message = make(chan string)

	var sayHelloTo = func(who string)  {
		var data = fmt.Sprintf("Hello %s", who)
		message <- data
	}

	go sayHelloTo("John Week")
	go sayHelloTo("Ethan HUnt")
	go sayHelloTo("Jason Bourn")

	// var message1 = <- 
}