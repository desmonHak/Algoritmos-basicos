#Cifrador César en Python
def cifrar(texto, rotacion):  
    result = "" 
  
    # Recorrer todos los caracteres 
    for i in range(len(texto)): 
        char = texto[i] 
  
        # Minúsculas
        if (char.isupper()): 
            result += chr((ord(char) + rotacion-65) % 26 + 65) 
  
        # Mayúsculas 
        else: 
            result += chr((ord(char) + rotacion - 97) % 26 + 97) 
  
    return result 
  
# Verificación del programa 
texto = "Hola Mundo"
rotacion = 5

print("Texto original : " + texto) 
print("Rotación        : " + str(rotacion)) 
print("Texto cifrado   : " + cifrar(texto, rotacion)) 
