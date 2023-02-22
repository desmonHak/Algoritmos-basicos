#include <stdio.h>

int fibonacci(int n)
{
    if (n == 0)
        return 0;
    else if (n == 1)
        return 1;
    else
        return (fibonacci(n - 1) + fibonacci(n - 2));
}

int main()
{
    int n, i = 0;
    printf("Ingresa cuantos numeros de Fibonacci deseas encontrar: ");
    scanf("%d", &n);

    printf("Los %d primeros numeros de Fibonacci son: \n", n);
    for (i = 0; i < n; i++)
    {
        printf("%d\n", fibonacci(i));
    }
    return 0;
}
