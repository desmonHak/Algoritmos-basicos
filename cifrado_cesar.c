#include <stdio.h>
#include <string.h>
#include <ctype.h>

void encrypt(char *string, int shift)
{
    char *ptr = string;
    while (*ptr != '\0')
    {
        if (isupper(*ptr))
            *ptr = ((*ptr - 'A' + shift) % 26) + 'A';

        else if (islower(*ptr))
            *ptr = ((*ptr - 'a' + shift) % 26) + 'a';

        ptr++;
    }
}

int main()
{
    char text[100];
    int shift;

    printf("Introduce el texto: ");
    scanf("%99[^\n]", text);

    printf("Introduce el desplazamiento: ");
    scanf("%d", &shift);

    encrypt(text, shift);
    printf("Coded text: %s\n", text);

    return 0;
}
