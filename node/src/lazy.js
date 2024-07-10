function* generator(n) {
    while (true) {
        yield n
        n++
    }
}

function findFirst(iterator, predicate) {
    for (const i of iterator) {
        if (predicate(i)) {
            return i
        }
    }
}

const iterator = generator(0)
const element = findFirst(iterator, n => n >= 2)
console.log(element) // 2
