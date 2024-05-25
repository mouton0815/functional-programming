fn main() {
    let mut p = Box::new(3.14);
    let mut q = p;
    *q = 2.71; // Ok
    *p = 2.71; // COMPILER error: cannot assign ... value used after move
}
