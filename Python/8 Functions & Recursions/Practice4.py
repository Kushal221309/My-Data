"""
Write a recursive function to calculate 
the sum of first n natural number.

Sum(2) = 1+2
Sum(5) = 1+2+3+4+5
Sum(n) = sum(n-1)+n 

"""

def sum(n):
    if(n==1):
        return 1
    
    return sum(n-1) + n
n = int(input("Enter the no. : "))
m = sum(n-1) + n
print(m)

#    return sum(n-1) + n
# print(sum(4))
