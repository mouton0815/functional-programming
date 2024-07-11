package main

import logger "log"

func log(level string, message string) {
	logger.Printf("[%s]: %s", level, message)
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
