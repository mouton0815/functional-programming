package main

import "fmt"

func makeCounter() func() int {
	var i = 0
	return func() int {
		i++
		return i
	}
}

func main() {
	counter := makeCounter()
	fmt.Println(counter()) // 1
	fmt.Println(counter()) // 2
	fmt.Println(counter()) // 3
}
