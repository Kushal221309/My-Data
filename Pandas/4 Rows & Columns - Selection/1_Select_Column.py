
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'Shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 18000, 30000, 25000]
})

print(df[['Name']]) # single column

print(df[['Name', 'Salary']]) # multiple columns

