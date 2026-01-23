"""
Write a program to calculate the factorial (!) of 
a given number using for loop.
Ex - 5! = 5x4x3x2x1 = 120

"""
n = int(input("Enter the no. : "))

product = 1

for i in range(1, n+1):
    product = product * i

print(f"The factorial of {n} is {product}")


