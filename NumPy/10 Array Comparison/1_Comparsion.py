
import numpy as np

a = np.array([4, 2, 3])
b = np.array([4, 5, 6])

print(a == b)  # T F F
print(np.array_equal(a, b))  # F
