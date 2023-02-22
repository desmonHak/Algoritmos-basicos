// C/C++ program for recursive calculation of the Fibonacci numbers
#include <iostream>
using namespace std;

// Function to find nth Fibonacci number
int fib(int n)
{
    if (n <= 1)
        return n;
    return fib(n - 1) + fib(n - 2);
}

int main()
{
    int n = 20;
    cout << "The " << n << "th Fibonacci number is: " << fib(n);
    return 0;
}
