 PROGRAM DPT_CIFRADO_CESAR;
 
     CONST 
          MAX                  = 63;  //Tamaño del abecedario
          CORRECCION_ASCII_A   = 64;  //Corrección del código ASCII a la A mayúscula
          DESPLAZAMIENTO       = 5;   //Desplazamiento en el alfabeto para encriptar
 
     VAR  
          I                   : INTEGER;         //Índice de bucle
          CHARACTER           : CHAR;            //Personaje de entrada
          ENCODING_TABLE      : ARRAY[0..MAX] OF CHAR;  //Tabla de codificación con los caracteres por defecto
          CHARACTERS_INDEX    : INTEGER;         //Índice de la posición de carácter de entrada 
          ENCRYPTED_CHAR      : CHAR;            //Caracter encriptado
 
 
 BEGIN 
 
     //Iniciar encriptación
     FOR I := 0 TO MAX DO 
        BEGIN 
          ENCODING_TABLE[I] := CHR(I + CORRECCION_ASCII_A); 
        END; 
 
     REPEAT 
        BEGIN
          READLN(CHARACTER); 
          CHARACTERS_INDEX := ORD(CHARACTER) - CORRECCION_ASCII_A; //Calcular índice de caracteres es indexar 
          IF ( (CHARACTERS_INDEX + DESPLAZAMIENTO) < 0) OR 
              ( (CHARACTERS_INDEX + DESPLAZAMIENTO) > MAX) THEN 
             BEGIN
                ENCRYPTED_CHAR := CHARACTER; 
              END 
          ELSE 
             BEGIN 
               ENCRYPTED_CHAR := ENCODING_TABLE[CHARACTERS_INDEX + DESPLAZAMIENTO];
              END; 
          WRITE(ENCRYPTED_CHAR);
        END;
     UNTIL (CHARACTER = '.');
 END. 
