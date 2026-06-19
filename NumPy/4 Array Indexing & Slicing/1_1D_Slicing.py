
import numpy as np

a = np.array ([1, 3, 5, 7, 9])
print(a)

# [start : stop : step]
print(a[0:3])  # first 3 elements
print(a[-3: ])  #last 3 elements
print(a[1:4])  # middle 3 elements
print(a[0: :3])  # middle 3 elements with steps

