package src

fun log(level: String, message: String) {
    println("[$level]: $message")
}

fun logForLevel(level: String): (String) -> Unit {
    return fun (message: String) {
        log(level, message)
    }
}

fun main() {
    val logDebug = logForLevel("DEBUG")
    logDebug("Hello, World!")  // [DEBUG] Hello, World!
}