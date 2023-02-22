def cifrar_cesar(texto, desplazamiento)
  texto.chars.map { |letra| (letra.ord + desplazamiento).chr }.join
end
def descifrar_cesar(texto, desplazamiento)
  texto.chars.map { |letra| (letra.ord - desplazamiento).chr }.join
end
cifrado = cifrar_cesar("Hola Mundo", 3)
descifrado = descifrar_cesar(cifrado, 3)

puts "Cifrado: #{cifrado}"
# => 'krpd qxphu'

puts "Descifrado: #{descifrado}"
# => 'hola mundo'
