package fibonacci;

public class fibonacci 
{
    static int fibonacci(int number) 
    {
        if (number == 0) 
            return 0; 
        if (number == 1 || number == 2)
            return 1; 
  
        return fibonacci(number - 1) + fibonacci(number - 2); 
    } 
    
    public static void main(String args[]) 
    {
        int count, num;
        
        System.out.print("Ingresa cuantos numeros quieres imprimir: ");
        Scanner scanner = new Scanner(System.in);
        num = scanner.nextInt();
        
        System.out.printf("Los %s primeros numeros de Fibonacci son: ", num);
        for (count = 0; count < num; count++)
        {
            System.out.printf("%d\t", fibonacci(count));
        }
    }
}
