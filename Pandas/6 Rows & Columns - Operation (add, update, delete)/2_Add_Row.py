
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df.loc[len(df)] = ['XZY', 0, 0]
print(df)
