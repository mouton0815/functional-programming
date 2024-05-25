function makeCounter() {
    let i = 0
    return function() {
        return ++i
    }
}

let counter = makeCounter()

console.log(counter()) // 1
console.log(counter()) // 2
console.log(counter()) // 3