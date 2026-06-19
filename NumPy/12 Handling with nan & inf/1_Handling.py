
import numpy as np

a = np.array([1, 2, np.nan, 4, np.inf])
print(a)

print(np.isnan(a))  # F F T F F
print(np.nan_to_num(a))  # 1.00 2.00 0.00 4.00 1.797

