
import numpy as np

arr = np.array([[1, 2, 3], [4, 5, 6]])

s1 = np.vsplit(arr, 2)  # V - vertical split, 2 - row
for s in s1:
    print(s)

s2 = np.hsplit(arr, 3)  # H - horizontal split, 3 - column
for s in s2:
    print(s)

    