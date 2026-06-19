
import pandas as pd

df = pd.DataFrame({
    'Name' : ['Kushal', 'Amit', 'Rishabh', 'shivam'],
    'Age' : [24, 22, 28, 25],
    'Salary' : [25000, 20000, 30000, 25000]
})

df['DOJ'] = ['2024-01-01', '2025-11-01', '2023-01-01', '2024-01-01']
df['DOJ'] = pd.to_datetime(df['DOJ'])

df['Month'] = df['DOJ'].dt.month # add month column
df['Day_Name'] = df['DOJ'].dt.day_name() # add days column


# Aggregation based on group by

print(df.groupby('Month')['Salary'].sum())  # Total salary by months

print(df.groupby('Month')['Salary'].mean())  # Average by months
print(df.groupby('Month').agg({'Salary' : 'mean', 'Name' : 'count'}))

