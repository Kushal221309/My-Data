
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

print(np.add(a, b))  # 5 7 9
print(np.subtract(a, b))  # -3 -3 -3
print(np.multiply(a, b))  # 4 10 18
print(np.divide(a, b))  # 0.25 0.4 0.5

print(np.dot(a, b))  # (a+b) = 10+18+32 = 32

