# create a 3D array and it's attributes.

import numpy as np

arr = np.array([[[1, 2, 3], [4, 5, 6], [7, 8, 9]]])  # 3D - dual square brackets.
print(arr)

print("Shape", arr.shape)
print("Size", arr.size)
print("dType", arr.dtype)
print("nDim", arr.ndim)
