"""
Write a program to print multiplication table of 
a given no. using for loop.

"""

n = int(input("Enter your no. : "))
for i in range(1, 11):
    print(f"{n} X {i} = {n * i}" )

# Using While loop
m = int(input("Enter your no. : "))
j = 1
while(j<11):
    print(f"{m} X {j} = {m * j}" )
    j += 1
