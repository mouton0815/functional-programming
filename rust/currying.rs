fn log(level: &str, message: &str) {
    println!("[{level}] {message}");
}

fn log_for_level(level: &str) -> impl Fn(&str) -> () + '_ {
    return move |message| log(level, message);
}

fn main() {
    let log_debug = log_for_level("DEBUG");
    log_debug("Hello, World!"); // [DEBUG] Hello, World!
}
