"""
Write a program to find the sum of first n ntural number
using while loop.
Ex - 5 (input), 1+2+3+4+5 = 15 (output)

"""
n = int(input("Enter the no. : "))

i = 0
sum = 0

while(i<=n):
    sum +=i
    i+=1

print(sum)

