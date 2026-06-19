
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

print(df.loc[0:2]) # include 0, 1, 2 

print(df.loc[df.Name == 'Rishabh']) # loc = index name based

print(df.loc[(df.Name == 'Rishabh') & (df.Salary >= 30000)]) # with filter (30000)

print(df.loc[0]) 
