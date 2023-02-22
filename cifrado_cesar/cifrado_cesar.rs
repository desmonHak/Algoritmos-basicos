use std::io;

fn main() {
    println!("Introduce el texto que quieres cifrar:");
    let mut texto_entrada = String::new();

    io::stdin().read_line(&mut texto_entrada)
        .expect("Fallo al leer línea");

    let texto_limpio = texto_entrada.replace("\n", "");
    let cifrado_cesar = cifrar_cesar(&texto_limpio);

    println!("Cifrado Cesar: {}", cifrado_cesar);
}

// Función para cifrar el mensaje según el cifrado césar
fn cifrar_cesar(mensaje: &str) -> String {
    let displ = 3;

    mensaje.chars()
        // Iteramos sobre los caracteres del mensaje y los convertimos
        // en su carácter correspondiente con un desplazamiento de 'displ'
        .map(|c| ((c as u8 + displ) as char))
        // Convertimos el resultado obtenido a string
        .collect::<String>()
}
