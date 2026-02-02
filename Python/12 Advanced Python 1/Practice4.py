'''
Write a program to display a/b where a and b are integers. 
if b=0, display infinite by handling the "ZeroDivisionError".

'''
try:
    a = int(input("Enter A : "))
    b = int(input("Enter B : "))
    print(a/b)
except ZeroDivisionError as v:
    print("Infinite")
