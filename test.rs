fn main() {
    let lst = 16;
    match lst {
        5 => println!("Ok"),
        1..=3 => println!("Good"),
        _ => println!("None"),
    }
}
