package main

import "fmt"

func main() {
	// Mensaje a ser cifrado
	msg := "Hola Mundo"

	// La clave representará el número de letras
	// que se desplazarán, es decir 3 en este ejemplo.
	clave := 3

	// Bucle para recorrer la cadena.
	for i := 0; i < len(msg); i++ {
		// Obtenemos el código ASCII del caracter actual
		c := msg[i]

		// Realizamos el desplazamiento
		c -= clave

		// Volvemos a calcular su codigo ASCII
		c += clave

		// Mostramos el caracter
		fmt.Printf("%c", c)
	}
}
