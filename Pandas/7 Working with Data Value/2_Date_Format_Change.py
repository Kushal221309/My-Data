
import pandas as pd

df1 = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df1['DOJ1'] = ['2024-01-01', '2025-11-01', '2023-01-01', '2024-01-01']
df1['DOJ1'] = pd.to_datetime(df1['DOJ1'])
print(df1)


# change to date-time type using date-format
df2 = df1 # copy
df2['DOJ2'] = ['01-01-2024', '01-11-2025', '01-01-2023', '01-01-2024']
df2['DOJ2'] = pd.to_datetime(df2['DOJ2'], format = '%d-%m-%Y')
print(df2)

