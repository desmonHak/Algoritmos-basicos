fn fibonacci(x:i32) -> i32 {
    if x == 0 {
        return 0;
    } else if x == 1 || x == 2 {
        return 1;
    } else {
        return fibonacci(x-1) + fibonacci(x-2)
    }
}

fn main() {
    println!("{}",fibonacci(7));
}
