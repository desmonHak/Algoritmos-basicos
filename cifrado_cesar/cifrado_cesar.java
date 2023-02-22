package cifrado_cesar;
// Cesar Cipher Encription in Java

public class cifrado_cesar {

    public static String encryptCesar(String text, int shift) {
        char[] cipher = text.toCharArray();

        for (int i = 0; i < cipher.length; i++) {
            if (Character.isLetter(cipher[i])) {
                if (Character.isLowerCase(cipher[i])) {
                    char replacement = (char) (cipher[i] + shift);

                    if (replacement > 'z')
                        cipher[i] = (char) (cipher[i] - (26 - shift));
                    else
                        cipher[i] = replacement;
                } else if (Character.isUpperCase(cipher[i])) {
                    char replacement = (char) (cipher[i] + shift);

                    if (replacement > 'Z')
                        cipher[i] = (char) (cipher[i] - (26 - shift));
                    else
                        cipher[i] = replacement;
                }
            }
        }
        return new String(cipher);
    }

    // Cesar Cipher Decription in Java
    public static String decryptCesar(String text, int shift) {
        char[] cipher = text.toCharArray();

        for (int i = 0; i < cipher.length; i++) {
            if (Character.isLetter(cipher[i])) {
                if (Character.isLowerCase(cipher[i])) {
                    char replacement = (char) (cipher[i] - shift);

                    if (replacement < 'a')
                        cipher[i] = (char) (cipher[i] + (26 - shift));
                    else
                        cipher[i] = replacement;
                } else if (Character.isUpperCase(cipher[i])) {
                    char replacement = (char) (cipher[i] - shift);

                    if (replacement < 'A')
                        cipher[i] = (char) (cipher[i] + (26 - shift));
                    else
                        cipher[i] = replacement;
                }
            }
        }
        return new String(cipher);
    }

    public static void main(String[] args) {
        String text = "ATTACKATONCE";
        int s = 4;
        System.out.println("Text  : " + text);
        System.out.println("Shift : " + s);
        System.out.println("Cipher: " + encryptCesar(text, s));
    }
}
