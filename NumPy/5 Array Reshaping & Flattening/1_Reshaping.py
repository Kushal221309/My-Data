
import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])

r1 = arr.reshape((6, 1))  # (row, column)
print(r1)


r2 = arr.reshape((3, 2))
print(r2)

