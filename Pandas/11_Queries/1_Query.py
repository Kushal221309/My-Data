
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'Shaivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
    })

df['DOJ'] = ['2024-01-01', '2025-11-01', '2023-01-01', '2024-01-01']
df['DOJ'] = pd.to_datetime(df['DOJ'])
df['Month'] = df['DOJ'].dt.month # add month column


# filter salary >= 25000 and January employees

# Method - 1
print(df[(df['Month'] == 1) & (df['Salary'] >= 25000)])

# Method - 2
print(df.query("Month == 1 and Salary >= 25000"))

