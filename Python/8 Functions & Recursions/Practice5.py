"""

***
**      for n = 3
*

"""

def pattern(n):
    if(n==0):
        return  # print nothing
    print("*" * n)
    pattern(n-1)

pattern(3)
