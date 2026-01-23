"""
Write a program to print the following star pattern
    *
   ***      for n=5
  *****

"""

n = int(input("Enter the no. : "))
for i in range(1, n+1):
    print(" " * (n-i), end="")  # end="" (new line add nahi karta)
    print("*" * (2*i-1), end="")  
    print("") # print nothing

