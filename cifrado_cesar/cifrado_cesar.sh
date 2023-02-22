#!/bin/bash

texto_original=$1
llave=$2
longitud_alfabeto=26
offset=$(( $llave % $longitud_alfabeto ))

codificado=""
for (( i=0; i<${#texto_original}; i++ )); do
    caracter=${texto_original:$i:1}
    ascii_codigo=`printf "%d" "'$caracter"`
    
    # Saltar caracteres no alfanumericos
    if [[ "$ascii_codigo" -lt "65" || ("$ascii_codigo" -gt "90" && "$ascii_codigo" -lt "97") || "$ascii_codigo" -gt "122" ]]; then
        codificado+="$caracter"
        continue
    fi

    letra_codificada=$(( ($ascii_codigo + $offset - 65) % $longitud_alfabeto + 65 ))
    
    if [[ "$ascii_codigo" -gt "90" && "$letra_codificada" -lt "97" ]]; then
        letra_codificada+=32
    fi
    
    codificado+=`printf \$(printf '%03o' $letra_codificada)`
done

echo $codificado
