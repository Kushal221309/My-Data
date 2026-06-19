
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

s1 = np.vstack((a, b))  # V - vertical stacking (row wise), 2D
print(s1)

s2 = np.hstack((a, b))  # H - horizontal stacking (column wise), 1D
print(s2)

