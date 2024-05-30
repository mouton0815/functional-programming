fun makeCounter(): () -> Int {
    var i = 0
    return fun(): Int {
        return ++i
    }
}

fun main() {
    val counter = makeCounter()
    println(counter()) // 1
    println(counter()) // 2
    println(counter()) // 3
}