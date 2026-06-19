
import numpy as np

a = np.array([[1, 2, 3], 
              [4, 5, 6], 
              [7, 8, 9]])
print(a)

print(a[0])  # OP - 1 2 3,  row - 1
print(a[1])  # OP - 4 5 6,  row - 2
print(a[2])  # OP - 7 8 9,  row - 3
print(a[0][2])  # OP - 3
print(a[2][2])  # OP - 9
print(a[ : ,0])  # OP - 1 4 7, column - 1
print(a[ : ,1])  # OP - 2 5 8, column - 2
print(a[ : ,2])  # OP - 3 6 9, column - 3


print(a[ : :2, 0])  # OP - 1 7,  jump - 2
print(a[ : : , 1:2])  # OP - 2 5 8,  start - 1 & stop - 2
print(a[0: : , 1:2])  # OP - 2 5 8, 
print(a[1: : , 1:2])  # OP - 5 8
print(a[2: : , 1:2])  # OP - 8

