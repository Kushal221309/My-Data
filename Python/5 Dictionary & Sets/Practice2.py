''' 
Write a program to input eight numbers from the user and
display all the unique numbers (once). 
'''

s = set()

n = input("Enter number 1:")
s.add(int(n))

n = input("Enter number 2:")
s.add(int(n))

n = input("Enter number 3:")
s.add(int(n))

print(s)
