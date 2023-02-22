# Definir una constante para los desplazamientos
use constant SHIFT => 3;
 
# Se debe ingresar el texto plano 
my $texto = "Hola, Mundo!";
 
# Convertir el texto a minúsculas
$texto = lc($texto);
 
# Se inicializa el resultado
my $salida = "";
 
# Iterar sobre el texto para convertir 
# cada carácter
foreach my $char (split //, $texto) {
    # Desplazar el caracter a la derecha
    my $desp = ord($char) + SHIFT;
   
    # Validar que el desplazamiento de este caracter exista
    if ($desp > ord("z")) {
        # Volver el desplazamiento al rango
        $desp -= 26;
    }
 
    # Agregar el nuevo caracter al resultado
    $salida .= chr($desp);
}
 
# Imprimir el TextoCifrado
print $salida;
