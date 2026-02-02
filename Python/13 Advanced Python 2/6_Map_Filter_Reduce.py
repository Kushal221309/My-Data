# Map Ex -
l = [1, 2, 3, 4, 5]
square = lambda x:x*x
sqlist = map(square, l)
print(list(sqlist))

 
# Filter Ex -
l = [1, 2, 3, 4, 5]
def even(n):
    if(n%2 == 0):
        return True
    return False

onlyeven = filter(even, l)
print(list(onlyeven)) 


# Reduce Ex -
from functools import reduce
l = [1, 2, 3, 4, 5]

def sum(a, b):
    return a+b

print(reduce(sum, l))  # 25

