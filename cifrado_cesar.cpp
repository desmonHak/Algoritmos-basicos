#include <iostream>
using namespace std;

// Función para implementar cifrado César
string cifradoCesar(string mensaje, int clave)
{
    string mensajeEncriptado = "";

    for (int i = 0; i < mensaje.length(); i++)
    {

        if (isupper(mensaje[i]))
            mensajeEncriptado += char(int(mensaje[i] + clave - 65) % 26 + 65);

        else
            mensajeEncriptado += char(int(mensaje[i] + clave - 97) % 26 + 97);
    }

    return mensajeEncriptado;
}

// Driver Code
int main()
{
    string mensaje = "HOLA";
    int clave = 3;
    cout << cifradoCesar(mensaje, clave) << endl;
    return 0;
}
