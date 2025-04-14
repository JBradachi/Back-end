extern crate rand;

use std::io;
use rand::Rng;
use std::cmp::Ordering;

fn main() {
    println!("Adivinhe o número!");
    
    let secret_number = rand::thread_rng().gen_range(1, 101);

    loop {
        println!("Digite o seu palpite.");

        let mut palpite = String::new();

        io::stdin().read_line(&mut palpite)
            .expect("Falha de entrada");

        let palpite:u32 = match palpite.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Digite um numero");
                continue;
            },
        };
    
        println!("Você disse: {}", palpite);

        match palpite.cmp(&secret_number) {
            Ordering::Equal => {
                println!("Você acertou!");
                break;
            },
            Ordering::Greater => println!("Muito alto!"),
            Ordering::Less => println!("Muito baixo!"),
        }
    }

}
