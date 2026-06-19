
import pandas as pd

df1 = pd.DataFrame({
    'ID' : [1, 2, 3],
    'Name' : ['A', 'B', 'C']
})

df2 = pd.DataFrame({
    'ID' : [1, 2, 2, 4],
    'Score' : [88, 96, 77, 79]
})

print(pd.merge(df1, df2, how = 'inner', on = 'ID'))
print(pd.merge(df1, df2, how = 'left', on = 'ID'))
print(pd.merge(df1, df2, how = 'right', on = 'ID'))
print(pd.merge(df1, df2, how = 'outer', on = 'ID'))
