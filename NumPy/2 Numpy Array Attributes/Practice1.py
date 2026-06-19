# Create a 1D array and find it's attributes.

import numpy as np

l1 = [1, 2, 3]

arr = np.array(l1)  # 1D - without square brackets.
print(arr)

print("Shape", arr.shape)
print("Size", arr.size)
print("dType", arr.dtype)
print("nDim", arr.ndim)
