
import pandas as pd

df1 = pd.DataFrame({
    'ID' : [1, 2, 3],
    'Name' : ['A', 'B', 'C']
})

df2 = pd.DataFrame({
    'ID' : [1, 2, 2, 4],
    'Score' : [88, 96, 77, 79]
})

print(pd.concat([df1, df2], axis = 0))  # Vertical or Row

print(pd.concat([df1, df2], axis = 1))  # Horizontal or column
