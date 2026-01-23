"""
Factorial - 5! = 5x4x3x2x1 = 120

Factorial - n x n-1 x ...3 x 2 x 1
Factorial - n * Factorial(n-1)

"""

def factorial(n):
    if(n==1 or n==0): # 1! and 0! = 1
        return 1
    return n * factorial(n-1) # it will call itself
"""
    Factorial(5)
    5 Factorial(4)
    5*4 Factorial(3) ...
"""
n = int(input("Enter the no. : "))
print(f"The Factorial of this no. is : , {factorial(n)}")


