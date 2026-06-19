
import numpy as np

a = np.array([[1, 2, 3], 
              [4, 5, 6]])
print(a)

print(a[1][2])  # OP - 6
print(a[0][1])  # OP - 2
print(a[1: ])  # OP - 4 5 6,  row - 2
print(a[ :1])  # OP - 1 2 3,  row - 1
print(a[ : ])  # OP - all
print(a[ :,2])  # OP - 3 6,  column - 3
print(a[ :,0])  # OP - 1 4,  column - 1
print(a[ :,1])  # OP - 2 5,  column - 2
print(a[1:,2])  # OP - 6
