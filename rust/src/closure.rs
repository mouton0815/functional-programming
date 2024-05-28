fn make_counter() -> impl FnMut() -> i32 {
    let mut i = 0;
    move || { i += 1; i }
}

fn main() {
    let mut counter = make_counter();
    println!("{}", counter()); // 1
    println!("{}", counter()); // 2
    println!("{}", counter()); // 3
}