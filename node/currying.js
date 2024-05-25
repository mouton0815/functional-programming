function log(level, message) {
    console.log(`[${level}]: ${message}`)
}

function logForLevel(level) {
    return function (message) {
        log(level, message)
    }
}

const logDebug = logForLevel('DEBUG')
logDebug('Hello, World!')  // [DEBUG] Hello, World!