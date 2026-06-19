
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df['DOJ'] = ['2024-01-01', '2025-11-01', '2023-01-01', '2024-01-01']
df['DOJ'] = pd.to_datetime(df['DOJ'])


# extract year, month, week, day
print(df['DOJ'].dt.month)
print(df['DOJ'].dt.day_name())

df['Month'] = df['DOJ'].dt.month # add month column
df['Day_Name'] = df['DOJ'].dt.day_name() # add days column
print(df)
