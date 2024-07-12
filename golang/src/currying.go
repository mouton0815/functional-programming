package main

import "fmt"

func log(level string, message string) {
	fmt.Printf("[%s]: %s\n", level, message)
}

func logForLevel(level string) func(string) {
	return func(message string) {
		log(level, message)
	}
}

func main() {
	logDebug := logForLevel("DEBUG")
	logDebug("Hello, World!") // [DEBUG] Hello, World!
}
