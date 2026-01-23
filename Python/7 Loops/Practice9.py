"""
Write a program to print multiplication table of n
using for loop in reversed order.

"""

n = int(input("Enter the no. : "))
for i in range(1, 11):
    print(f"{n} X {11-i} = {n*(11-i)}")

