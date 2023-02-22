def calc_fibonacci(n): 
    if n<0:
        print("Incorrect input") 
    elif n==0: 
        return 0
    elif n==1: 
        return 1
    else: 
        return calc_fibonacci(n-1)+calc_fibonacci(n-2)


num = int(input("Ingresa cuantos numeros de Fibonacci deseas encontrar: ")) 
  
if num<=0:
    print("Por favor ingresa un entero positivo")
else:
    for i in range(num):
        print(calc_fibonacci(i), end=" ")
